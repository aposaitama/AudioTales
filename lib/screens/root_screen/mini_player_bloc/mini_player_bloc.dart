import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_state.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';

class MiniPlayerBloc extends Bloc<MiniPlayerBlocEvent, MiniPlayerBlocState> {
  final FlutterSoundPlayer _player = FlutterSoundPlayer();
  bool _isPlayerInitialized = false;
  MiniPlayerBloc() : super(const MiniPlayerBlocState()) {
    on<OpenMiniPlayerEvent>(_openPlayer);
    on<CloseMiniPlayerEvent>(_closePlayer);
    on<PauseMiniPlayerEvent>(_pausePlayer);
    on<UpdateLineMiniPlayerEvent>(_updateLine);
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
        fromURI: event.audioRecordsList[0].url,
        codec: Codec.aacADTS,
        whenFinished: () {
          add(const CloseMiniPlayerEvent());
        },
        // whenFinished: () {
        //   add(const StopPlayingEvent());
        // },
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
    emit(state.copyWith(status: MiniPlayerStatus.closed));
  }

  Future<void> _pausePlayer(
      PauseMiniPlayerEvent event, Emitter<MiniPlayerBlocState> emit) async {
    emit(state.copyWith(status: MiniPlayerStatus.paused));
  }

  Future<void> _updateLine(UpdateLineMiniPlayerEvent event,
      Emitter<MiniPlayerBlocState> emit) async {}
}
