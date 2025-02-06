import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';

part 'mini_player_bloc_state.freezed.dart';

enum MiniPlayerStatus {
  playing,
  paused,
  closed,
}

@freezed
class MiniPlayerBlocState with _$MiniPlayerBlocState {
  const factory MiniPlayerBlocState({
    @Default([]) List<AudioRecordsModel> audioRecordsList,
    @Default(MiniPlayerStatus.closed) MiniPlayerStatus status,
    @Default(Duration.zero) Duration position,
    @Default(0) int currentPlayingIndex,
    @Default(false) bool isPlayingAll,
  }) = _MiniPlayerBlocState;
}
