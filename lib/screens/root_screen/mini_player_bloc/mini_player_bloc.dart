import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_state.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';
import 'package:memory_box_avada/screens/root_screen/widgets/mini_player.dart';

class MiniPlayerBloc extends Bloc<MiniPlayerBlocEvent, MiniPlayerBlocState> {
  final FlutterSoundPlayer _player = FlutterSoundPlayer();
  bool _isPlayerInitialized = false;
  MiniPlayerBloc() : super(const MiniPlayerBlocState()) {
    on<OpenMiniPlayerEvent>(_openPlayer);
    on<CloseMiniPlayerEvent>(_closePlayer);
    on<PauseMiniPlayerEvent>(_pausePlayer);
    on<UpdateLineMiniPlayerEvent>(_updateLine);
    on<NextTrackMiniPlayerEvent>(_nextTrack);
  }

  Future<void> _openPlayer(
      OpenMiniPlayerEvent event, Emitter<MiniPlayerBlocState> emit) async {
    if (!_isPlayerInitialized) {
      await _player.openPlayer();
      _isPlayerInitialized = true;
    }
    print(event.audioRecordsList[0].url);
    try {
      await _player.startPlayer(
        fromURI: event.audioRecordsList[state.currentPlayingIndex].url,
        codec: Codec.aacADTS,
        whenFinished: () {
          add(const NextTrackMiniPlayerEvent());
        },
      );
    } catch (e) {
      print(e);
    }

    emit(state.copyWith(
        status: MiniPlayerStatus.playing,
        audioRecordsList: event.audioRecordsList));
  }

  Future<void> _closePlayer(
      CloseMiniPlayerEvent event, Emitter<MiniPlayerBlocState> emit) async {
    await _player.closePlayer();
    _isPlayerInitialized = false;
    emit(state.copyWith(
        status: MiniPlayerStatus.closed, currentPlayingIndex: 0));
  }

  Future<void> _pausePlayer(
      PauseMiniPlayerEvent event, Emitter<MiniPlayerBlocState> emit) async {
    emit(state.copyWith(status: MiniPlayerStatus.paused));
  }

  Future<void> _nextTrack(
      NextTrackMiniPlayerEvent event, Emitter<MiniPlayerBlocState> emit) async {
    final nextIndex = state.currentPlayingIndex + 1;
    if (nextIndex < state.audioRecordsList.length) {
      final nextTrack = state.audioRecordsList[nextIndex];

      await _player.startPlayer(
        fromURI: nextTrack.url,
        codec: Codec.aacADTS,
        whenFinished: () {
          add(const NextTrackMiniPlayerEvent());
        },
      );

      emit(
        state.copyWith(
          currentPlayingIndex: nextIndex,
          status: MiniPlayerStatus.playing,
          position: Duration.zero,
        ),
      );
    } else {
      add(const CloseMiniPlayerEvent());
    }
  }

  Future<void> _updateLine(UpdateLineMiniPlayerEvent event,
      Emitter<MiniPlayerBlocState> emit) async {}
}
