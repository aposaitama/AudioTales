import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';
import 'package:share_plus/share_plus.dart';

class AudioRecordsScreenBloc
    extends Bloc<AudioRecordsScreenStateEvent, AudioRecordsScreenState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  StreamSubscription<List<AudioRecordsModel>>? _audioSubscription;
  StreamSubscription<User?>? _authSubscription;
  int _page = 1;
  AudioRecordsScreenBloc() : super(const AudioRecordsScreenState()) {
    on<LoadingAudioRecordsScreenStateEvent>(_loading);
    on<LoadedAudioRecordsScreenStateEvent>(_loaded);
    on<DeleteAudioRecordsScreenStateEvent>(_deleteAuido);
    on<DeleteAudioFromCollectionRecordsScreenStateEvent>(
      _deleteAudioFromCollection,
    );
    on<EditAudioRecordsScreenStateEvent>(_editAudio);
    on<ChangePopupAudioRecordsScreenStateEvent>(_changePopup);
    on<CancelEditingAudioRecordsScreenStateEvent>(_cancelEditing);
    on<SaveAudioRecordsScreenStateEvent>(_updateAudioTitle);
    on<ShareAudioRecordsScreenStateEvent>(_share);
    on<ChooseAudioRecordsScreenStateEvent>(_chooseAudio);
    on<ChooseCollectionAudioRecordsScreenStateEvent>(_chooseColection);
    on<LoadNextPageAudioRecordsScreenStateEvent>(_loadNextPage);
    on<ClearListAudioRecordsScreenStateEvent>(_clearList);

    _subscribeToAudioStream();
    _subscribeToAuthChanges();
  }

  Future<void> _clearList(
    ClearListAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    emit(state.copyWith(audioList: []));
  }

  void _subscribeToAuthChanges() {
    _authSubscription = FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        if (user == null) return;

        add(ClearListAudioRecordsScreenStateEvent());

        _subscribeToAudioStream();
      },
    );
  }

  void _subscribeToAudioStream() {
    final currentUid = FirebaseAuth.instance.currentUser?.uid;
    print(currentUid);
    if (currentUid == null) return;
    _audioSubscription =
        _firebaseFirestoreService.getUserAudiosStream2(state.audioList).listen(
      (audioList) {
        // print('Received audio list: $audioList');
        add(LoadedAudioRecordsScreenStateEvent(audioList));
      },
      onError: (error) {
        print('Error receiving audio list: $error');
      },
    );
  }

  Future<void> _loadNextPage(
    LoadNextPageAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    _page++;
    _subscribeToAudioStream();
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
    emit(state.copyWith(choosingCollection: event.collectionList));
  }

  Future<void> _share(
    ShareAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    Share.share('Прослухай цей аудіозапис - ${event.audioElem.url}');
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
    final updatedAudioList = List<AudioRecordsModel>.from(state.audioList);

    for (var newAudio in event.audioList) {
      if (!updatedAudioList.any((audio) => audio.id == newAudio.id)) {
        updatedAudioList.add(newAudio);
      }
    }

    updatedAudioList.sort((a, b) => b.creationTime.compareTo(a.creationTime));

    emit(
      state.copyWith(
        status: AudioRecordsScreenStatus.loaded,
        audioList: updatedAudioList,
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
    _authSubscription?.cancel();
    return super.close();
  }
}
