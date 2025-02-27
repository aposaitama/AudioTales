import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/home_screen/bloc/home_screen_bloc_event.dart';
import 'package:memory_box_avada/screens/home_screen/bloc/home_screen_bloc_state.dart';
import 'package:memory_box_avada/sources/auth_service.dart';
import 'package:memory_box_avada/sources/db_service.dart';
import 'package:share_plus/share_plus.dart';

class HomeScreenBloc extends Bloc<HomeScreenBlocEvent, HomeScreenState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();

  final AuthService _authService = locator<AuthService>();
  StreamSubscription<List<AudioRecordsModel>>? _audioSubscription;
  StreamSubscription<bool>? _authSubscription;
  HomeScreenBloc() : super(const HomeScreenState()) {
    on<LoadingHomeScreenBlocEvent>(_loading);
    on<LoadedHomeScreenBlocEvent>(_loaded);
    on<DeleteHomeScreenBlocEvent>(_deleteAuido);
    on<LoadNextPageHomeScreenBlocEvent>(_loadNextPage);
    on<EditHomeScreenBlocEvent>(_editAudio);
    on<ChangePopupHomeScreenBlocEvent>(_changePopup);
    on<CancelEditingHomeScreenBlocEvent>(_cancelEditing);
    on<SaveHomeScreenBlocEvent>(_updateAudioTitle);
    on<ShareHomeScreenBlocEvent>(_share);
    on<ChooseHomeScreenBlocEvent>(_chooseAudio);
    on<ChooseCollectionHomeScreenBlocEvent>(_chooseColection);

    _subscribeToAudioStream();
    _subscribeToAuthChanges();
  }

  void _subscribeToAuthChanges() {
    _authSubscription?.cancel();

    _authSubscription = _authService.authStatusChanges.listen((isAuthorized) {
      if (isAuthorized) {
        _subscribeToAudioStream();
      } else {
        _audioSubscription?.cancel();
        add(const LoadedHomeScreenBlocEvent([]));
      }
    });
  }

  // void _subscribeToAudioStream() {
  //   _audioSubscription =
  //       _firebaseFirestoreService.getUserAudiosStream3().listen(
  //     (audioList) {
  //       add(LoadedHomeScreenBlocEvent(audioList));
  //     },
  //   );
  // }

  void _subscribeToAudioStream() {
    _audioSubscription =
        _firebaseFirestoreService.getUserAudiosStream2(state.audioList).listen(
      (audioList) {
        add(LoadedHomeScreenBlocEvent(audioList));
      },
    );
  }

  Future<void> _loadNextPage(
    LoadNextPageHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    final currentAudioList = state.audioList;

    final audioStream =
        _firebaseFirestoreService.getUserAudiosStream2(currentAudioList);

    audioStream.listen((newAudioList) {
      final updatedList = List<AudioRecordsModel>.from(currentAudioList)
        ..addAll(newAudioList);
      add(LoadedHomeScreenBlocEvent(updatedList));
    });
  }

  Future<void> _chooseAudio(
    ChooseHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(
      state.copyWith(choosingAudioList: event.audio),
    );
  }

  Future<void> _chooseColection(
    ChooseCollectionHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    await _firebaseFirestoreService.addAudiosToCollections(
      state.choosingAudioList,
      event.collectionList,
    );

    emit(
      state.copyWith(
        choosingCollection: [],
        choosingAudioList: [],
      ),
    );
  }

  Future<void> _share(
    ShareHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    Share.share('Прослухай цей аудіозапис - ${event.audioElem.url}');
  }

  Future<void> _updateAudioTitle(
    SaveHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    await _firebaseFirestoreService.updateAudioTitleById(
      audioId: state.editingAudioId!,
      newTitle: event.newTitle,
    );
    emit(
      state.copyWith(
        editingAudioId: '',
        popupStatus: HomePopupStatus.initial,
      ),
    );
  }

  Future<void> _editAudio(
    EditHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(state.copyWith(editingAudioId: event.audioId));
  }

  Future<void> _cancelEditing(
    CancelEditingHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(state.copyWith(editingAudioId: ''));
  }

  Future<void> _changePopup(
    ChangePopupHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(state.copyWith(popupStatus: event.popupStatus));
  }

  Future<void> _loading(
    LoadingHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    emit(state.copyWith(status: HomeScreenStatus.loading));
  }

  Future<void> _loaded(
    LoadedHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    // final audioList = await _firebaseFirestoreService.getUserAudios();
    emit(
      state.copyWith(
        status: HomeScreenStatus.loaded,
        audioList: event.audioList,
      ),
    );
  }

  Future<void> _deleteAuido(
    DeleteHomeScreenBlocEvent event,
    Emitter<HomeScreenState> emit,
  ) async {
    await _firebaseFirestoreService.deleteAudio(event.title);
  }

  @override
  Future<void> close() {
    _audioSubscription?.cancel();
    return super.close();
  }
}
