import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_state.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';

class MiniPlayerBloc extends Bloc<MiniPlayerBlocEvent, MiniPlayerBlocState> {
  MiniPlayerBloc() : super(const MiniPlayerBlocState()) {
    on<OpenMiniPlayerEvent>(_openPlayer);
    on<CloseMiniPlayerEvent>(_closePlayer);
    on<PauseMiniPlayerEvent>(_pausePlayer);
    on<UpdateLineMiniPlayerEvent>(_updateLine);
  }

  Future<void> _openPlayer(
      OpenMiniPlayerEvent event, Emitter<MiniPlayerBlocState> emit) async {}

  Future<void> _closePlayer(
      CloseMiniPlayerEvent event, Emitter<MiniPlayerBlocState> emit) async {}

  Future<void> _pausePlayer(
      PauseMiniPlayerEvent event, Emitter<MiniPlayerBlocState> emit) async {}

  Future<void> _updateLine(UpdateLineMiniPlayerEvent event,
      Emitter<MiniPlayerBlocState> emit) async {}
}
