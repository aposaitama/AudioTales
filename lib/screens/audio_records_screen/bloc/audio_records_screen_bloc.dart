import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';
import 'package:memory_box_avada/sources/auth_service.dart';
import 'package:memory_box_avada/sources/db_service.dart';
import 'package:share_plus/share_plus.dart';

class AudioRecordsScreenBloc
    extends Bloc<AudioRecordsScreenStateEvent, AudioRecordsScreenState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();

  final AuthService _authService = locator<AuthService>();
  StreamSubscription<List<AudioRecordsModel>>? _audioSubscription;
  StreamSubscription<bool>? _authSubscription;
  AudioRecordsScreenBloc() : super(const AudioRecordsScreenState()) {
    on<LoadingAudioRecordsScreenStateEvent>(_loading);
    on<LoadedAudioRecordsScreenStateEvent>(_loaded);
    on<DeleteAudioRecordsScreenStateEvent>(_deleteAuido);
    on<DeleteAudioFromCollectionRecordsScreenStateEvent>(
      _deleteAudioFromCollection,
    );
    on<LoadNextPageAudioRecordsScreenStateEvent>(_loadNextPage);
    on<EditAudioRecordsScreenStateEvent>(_editAudio);
    on<ChangePopupAudioRecordsScreenStateEvent>(_changePopup);
    on<CancelEditingAudioRecordsScreenStateEvent>(_cancelEditing);
    on<SaveAudioRecordsScreenStateEvent>(_updateAudioTitle);
    on<ShareAudioRecordsScreenStateEvent>(_share);
    on<ChooseAudioRecordsScreenStateEvent>(_chooseAudio);
    on<ChooseCollectionAudioRecordsScreenStateEvent>(_chooseColection);
    on<SaveAudioInColectionRecordsScreenStateEvent>(_saveAudioInCollection);

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
      }
    });
  }

  // void _subscribeToAudioStream() {
  //   _audioSubscription =
  //       _firebaseFirestoreService.getUserAudiosStream3().listen(
  //     (audioList) {
  //       add(LoadedAudioRecordsScreenStateEvent(audioList));
  //     },
  //   );
  // }

  void _subscribeToAudioStream() {
    _audioSubscription =
        _firebaseFirestoreService.getUserAudiosStream3().listen(
      (audioList) {
        add(LoadedAudioRecordsScreenStateEvent(audioList));
      },
    );
  }

  Future<void> _loadNextPage(
    LoadNextPageAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    final currentAudioList = state.audioList;

    final audioStream =
        _firebaseFirestoreService.getUserAudiosStream2(currentAudioList);

    audioStream.listen((newAudioList) {
      final updatedList = List<AudioRecordsModel>.from(currentAudioList)
        ..addAll(newAudioList);
      add(LoadedAudioRecordsScreenStateEvent(updatedList));
    });
  }

  Future<void> _chooseAudio(
    ChooseAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    emit(
      state.copyWith(choosingAudioList: event.audio),
    );
  }

  Future<void> _chooseColection(
    ChooseCollectionAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
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
    ShareAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    Share.share('Прослухай цей аудіозапис - ${event.audioElem.url}');
  }

  Future<void> _saveAudioInCollection(
    SaveAudioInColectionRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    await _firebaseFirestoreService.updateAudioTitleInCollectionById(
      collectionId: event.collectionId,
      audioId: state.editingAudioId!,
      newTitle: event.newTitle,
    );
    emit(
      state.copyWith(
        editingAudioId: '',
        popupStatus: AudioPopupStatus.initial,
      ),
    );
  }

  Future<void> _updateAudioTitle(
    SaveAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    await _firebaseFirestoreService.updateAudioTitleById(
      audioId: state.editingAudioId!,
      newTitle: event.newTitle,
    );
    emit(
      state.copyWith(
        editingAudioId: '',
        popupStatus: AudioPopupStatus.initial,
      ),
    );
  }

  Future<void> _editAudio(
    EditAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    emit(state.copyWith(editingAudioId: event.audioId));
  }

  Future<void> _cancelEditing(
    CancelEditingAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    emit(state.copyWith(editingAudioId: ''));
  }

  Future<void> _changePopup(
    ChangePopupAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    emit(state.copyWith(popupStatus: event.popupStatus));
  }

  Future<void> _loading(
    LoadingAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    emit(state.copyWith(status: AudioRecordsScreenStatus.loading));
  }

  Future<void> _loaded(
    LoadedAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    // final audioList = await _firebaseFirestoreService.getUserAudios();
    emit(
      state.copyWith(
        status: AudioRecordsScreenStatus.loaded,
        audioList: event.audioList,
      ),
    );
  }

  Future<void> _deleteAuido(
    DeleteAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    await _firebaseFirestoreService.deleteAudio(event.title);
  }

  Future<void> _deleteAudioFromCollection(
    DeleteAudioFromCollectionRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    await _firebaseFirestoreService.deleteAudioFromCollection(
      event.collectionTitle,
      event.audioTitle,
    );
  }

  @override
  Future<void> close() {
    _audioSubscription?.cancel();
    return super.close();
  }
}
