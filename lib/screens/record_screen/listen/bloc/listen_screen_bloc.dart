import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_state.dart';
import 'package:path_provider/path_provider.dart';

class ListenRecordBloc extends Bloc<ListenRecordEvent, ListenRecordState> {
  final FlutterSoundPlayer _player = FlutterSoundPlayer();
  bool _isPlayerInitialized = false;

  ListenRecordBloc() : super(const ListenRecordState()) {
    on<StartPlayingEvent>(_startPlaying);
    on<PausePlayingEvent>(_pausePlaying);
    on<StopPlayingEvent>(_stopPlaying);
    on<ResumePlayingEvent>(_resumePlaying);
    // on<Add15Event>(_add15Sec);
  }

  Future<void> _startPlaying(
      StartPlayingEvent event, Emitter<ListenRecordState> emit) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/record.aac';
    if (!_isPlayerInitialized) {
      await _player.openPlayer();
      _isPlayerInitialized = true;
    }

    try {
      await _player.startPlayer(
        fromURI: filePath,
        codec: Codec.aacADTS,
        whenFinished: () {
          add(const StopPlayingEvent());
        },
      );

      emit(state.copyWith(status: ListenStatus.inProgress));
      _player.onProgress!.listen((event) {
        _player.setSubscriptionDuration(Duration(milliseconds: 100));

        if (state.status == ListenStatus.inProgress) {
          emit(state.copyWith(
            duration: event.duration,
          ));
          print(event.duration);
        }
      });
    } catch (e) {
      emit(state.copyWith(status: ListenStatus.initial));
    }
  }

  void _seekToPosition(
      Duration newPosition, Emitter<ListenRecordState> emit) async {
    if (state.status == ListenStatus.inProgress) {
      emit(state.copyWith(duration: newPosition));
    }
  }

  Future<void> _pausePlaying(
      PausePlayingEvent event, Emitter<ListenRecordState> emit) async {
    try {
      await _player.pausePlayer();
      emit(state.copyWith(status: ListenStatus.pause));
    } catch (e) {}
  }

  Future<void> _resumePlaying(
      ResumePlayingEvent event, Emitter<ListenRecordState> emit) async {
    await _player.resumePlayer();
    emit(state.copyWith(status: ListenStatus.resume));
  }

  // Future<void> _add15Sec(
  //     Add15Event event, Emitter<ListenRecordState> emit) async {
  //   try {
  //     final progress = await _player.getProgress();
  //     final currentPosition = progress['position'] ?? Duration.zero;
  //     final maxDuration = progress['duration'] ?? Duration.zero;

  //     final newPosition = currentPosition + Duration(seconds: 15);

  //     if (newPosition <= maxDuration) {
  //       await _player.seekToPlayer(newPosition);
  //       if (!emit.isDone) emit(ListenRecordProgress(newPosition));
  //     } else {
  //       await _player.seekToPlayer(maxDuration);
  //       if (!emit.isDone) emit(ListenRecordProgress(maxDuration));
  //     }
  //   } catch (e) {
  //     print("Error in _add15Sec: $e");
  //     if (!emit.isDone) emit(const ListenRecordInitial());
  //   }
  // }

  Future<void> _stopPlaying(
      StopPlayingEvent event, Emitter<ListenRecordState> emit) async {
    try {
      await _player.stopPlayer();
      emit(state.copyWith(status: ListenStatus.stop));
    } catch (e) {}
  }

  @override
  Future<void> close() async {
    if (_isPlayerInitialized) {
      await _player.closePlayer();
    }
    return super.close();
  }
}
