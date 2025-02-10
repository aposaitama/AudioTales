import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';
import 'package:memory_box_avada/sources/storage_service.dart';

class AudioRecordsScreenBloc
    extends Bloc<AudioRecordsScreenStateEvent, AudioRecordsScreenState> {
  final StorageService _firebaseStorageService = locator<StorageService>();
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  StreamSubscription<List<AudioRecordsModel>>? _audioSubscription;
  AudioRecordsScreenBloc() : super(const AudioRecordsScreenState()) {
    on<LoadingAudioRecordsScreenStateEvent>(_loading);
    on<LoadedAudioRecordsScreenStateEvent>(_loaded);
    on<DeleteAudioRecordsScreenStateEvent>(_deleteAuido);
    _subscribeToAudioStream();
  }

  void _subscribeToAudioStream() {
    _audioSubscription = _firebaseFirestoreService.getUserAudiosStream().listen(
      (audioList) {
        add(LoadedAudioRecordsScreenStateEvent(audioList));
      },
    );
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
    emit(state.copyWith(
        status: AudioRecordsScreenStatus.loaded, audioList: event.audioList));
  }

  Future<void> _deleteAuido(
    DeleteAudioRecordsScreenStateEvent event,
    Emitter<AudioRecordsScreenState> emit,
  ) async {
    await _firebaseFirestoreService.deleteAudio(event.title);
  }

  @override
  Future<void> close() {
    _audioSubscription?.cancel();
    return super.close();
  }
}
