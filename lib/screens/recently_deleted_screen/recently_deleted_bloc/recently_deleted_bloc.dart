import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/deleted_records_model.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc_event.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc_state.dart';
import 'package:memory_box_avada/sources/auth_service.dart';
import 'package:memory_box_avada/sources/db_service.dart';

class RecentlyDeletedBloc
    extends Bloc<RecentlyDeletedBlocEvent, RecentlyDeletedBlocState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  final AuthService _authService = locator<AuthService>();
  StreamSubscription<List<DeletedRecordsModel>>? _deletedAudioSubscription;
  StreamSubscription<bool>? _authSubscription;
  RecentlyDeletedBloc() : super(const RecentlyDeletedBlocState()) {
    on<LoadingRecentlyDeletedBlocEvent>(_loading);
    on<LoadedRecentlyDeletedBlocEvent>(_loaded);
    on<DeleteAudioRecentlyDeletedBlocEvent>(_deleteAudio);
    on<DeleteAllAudioRecentlyDeletedBlocEvent>(_deleteAll);
    on<ChooseMenuStatusAudioRecentlyDeletedBlocEvent>(_chooseMenuStatus);
    on<AddSelectedAudioRecentlyDeletedBlocEvent>(_addSelectedAudio);
    on<RecentlyDeletedProgressStatusEvent>(_progressStatus);
    on<ChooseAndDeleteAudioRecentlyDeletedBlocEvent>(
      _deleteSeveralSelectedAudio,
    );
    on<ChooseAndRestoreAudioRecentlyDeletedBlocEvent>(
      _restoreSeveralSelectedAuido,
    );

    on<RestoreAudioRecentlyDeletedBlocEvent>(_restoreAll);
    _subscribeToDeletedAudiosStream();
    _subscribeToAuthChanges();
  }

  void _subscribeToAuthChanges() {
    _authSubscription?.cancel();

    _authSubscription = _authService.authStatusChanges.listen((isAuthorized) {
      print('Auth status changed: $isAuthorized');
      if (isAuthorized) {
        _subscribeToDeletedAudiosStream();
      } else {
        _deletedAudioSubscription?.cancel();
      }
    });
  }

  void _subscribeToDeletedAudiosStream() {
    _deletedAudioSubscription =
        _firebaseFirestoreService.getUserDeletedAudiosStream().listen(
      (deletedAudioList) {
        add(LoadedRecentlyDeletedBlocEvent(deletedAudioList));
      },
    );
  }

  Future<void> _loading(
    LoadingRecentlyDeletedBlocEvent event,
    Emitter<RecentlyDeletedBlocState> emit,
  ) async {
    emit(state.copyWith(status: RecentlyDeletedStatus.loading));
  }

  Future<void> _loaded(
    LoadedRecentlyDeletedBlocEvent event,
    Emitter<RecentlyDeletedBlocState> emit,
  ) async {
    final groupedAudio = _groupByDeletedDate(event.audioList);
    emit(
      state.copyWith(
        audioList: event.audioList,
        groupedAudio: groupedAudio,
        status: RecentlyDeletedStatus.loaded,
      ),
    );
  }

  Future<void> _progressStatus(
    RecentlyDeletedProgressStatusEvent event,
    Emitter<RecentlyDeletedBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        progressStatus: event.progressStatus,
      ),
    );
  }

  Future<void> _chooseMenuStatus(
    ChooseMenuStatusAudioRecentlyDeletedBlocEvent event,
    Emitter<RecentlyDeletedBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        menuStatus: event.menuStatus,
      ),
    );
  }

  Future<void> _deleteAudio(
    DeleteAudioRecentlyDeletedBlocEvent event,
    Emitter<RecentlyDeletedBlocState> emit,
  ) async {
    await _firebaseFirestoreService
        .deleteAudioFromDeletedCollection(event.title);
  }

  Map<String, List<DeletedRecordsModel>> _groupByDeletedDate(
    List<DeletedRecordsModel> audioList,
  ) {
    final Map<String, List<DeletedRecordsModel>> grouped = {};
    final DateFormat formatter = DateFormat('dd.MM.yy');

    for (var audio in audioList) {
      final String formattedDate = formatter.format(audio.deletedAt);
      if (!grouped.containsKey(formattedDate)) {
        grouped[formattedDate] = [];
      }
      grouped[formattedDate]!.add(audio);
    }

    return grouped;
  }

  Future<void> _addSelectedAudio(
    AddSelectedAudioRecentlyDeletedBlocEvent event,
    Emitter<RecentlyDeletedBlocState> emit,
  ) async {
    final updatedList = List<DeletedRecordsModel>.from(state.selectedAudioList);

    if (updatedList.contains(event.audio)) {
      updatedList.remove(event.audio);
    } else {
      updatedList.add(event.audio);
    }

    emit(
      state.copyWith(
        selectedAudioList: updatedList,
      ),
    );
  }

  Future<void> _restoreAll(
    RestoreAudioRecentlyDeletedBlocEvent event,
    Emitter<RecentlyDeletedBlocState> emit,
  ) async {
    await _progressStatus(
      const RecentlyDeletedProgressStatusEvent(
        RecentlyDeletedProgressStatus.inProgress,
      ),
      emit,
    );

    await _firebaseFirestoreService
        .restoreSeveralAudiosFromDeletedCollection(state.audioList);

    await _progressStatus(
      const RecentlyDeletedProgressStatusEvent(
        RecentlyDeletedProgressStatus.initial,
      ),
      emit,
    );
  }

  Future<void> _deleteAll(
    DeleteAllAudioRecentlyDeletedBlocEvent event,
    Emitter<RecentlyDeletedBlocState> emit,
  ) async {
    await _progressStatus(
      const RecentlyDeletedProgressStatusEvent(
        RecentlyDeletedProgressStatus.inProgress,
      ),
      emit,
    );
    await _firebaseFirestoreService
        .deleteSeveralAudiosFromDeletedCollection(state.audioList);
    await _progressStatus(
      const RecentlyDeletedProgressStatusEvent(
        RecentlyDeletedProgressStatus.initial,
      ),
      emit,
    );
  }

  Future<void> _deleteSeveralSelectedAudio(
    ChooseAndDeleteAudioRecentlyDeletedBlocEvent event,
    Emitter<RecentlyDeletedBlocState> emit,
  ) async {
    await _progressStatus(
      const RecentlyDeletedProgressStatusEvent(
        RecentlyDeletedProgressStatus.inProgress,
      ),
      emit,
    );

    await _firebaseFirestoreService.deleteSeveralAudiosFromDeletedCollection(
      state.selectedAudioList,
    );

    await _progressStatus(
      const RecentlyDeletedProgressStatusEvent(
        RecentlyDeletedProgressStatus.initial,
      ),
      emit,
    );
    emit(
      state.copyWith(
        selectedAudioList: [],
        menuStatus: RecentlyDeletedMenuStatus.initial,
      ),
    );
  }

  Future<void> _restoreSeveralSelectedAuido(
    ChooseAndRestoreAudioRecentlyDeletedBlocEvent event,
    Emitter<RecentlyDeletedBlocState> emit,
  ) async {
    await _progressStatus(
      const RecentlyDeletedProgressStatusEvent(
        RecentlyDeletedProgressStatus.inProgress,
      ),
      emit,
    );

    await _firebaseFirestoreService
        .restoreSeveralAudiosFromDeletedCollection(state.selectedAudioList);

    await _progressStatus(
      const RecentlyDeletedProgressStatusEvent(
        RecentlyDeletedProgressStatus.initial,
      ),
      emit,
    );

    emit(
      state.copyWith(
        selectedAudioList: [],
        menuStatus: RecentlyDeletedMenuStatus.initial,
      ),
    );
  }

  @override
  Future<void> close() {
    _deletedAudioSubscription?.cancel();
    return super.close();
  }
}
