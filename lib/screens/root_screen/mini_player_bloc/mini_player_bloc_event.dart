import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';

part 'mini_player_bloc_event.freezed.dart';

@freezed
class MiniPlayerBlocEvent with _$MiniPlayerBlocEvent {
  const factory MiniPlayerBlocEvent.open(
    List<AudioRecordsModel> audioRecordsList,
  ) = OpenMiniPlayerEvent;
  const factory MiniPlayerBlocEvent.close() = CloseMiniPlayerEvent;
  const factory MiniPlayerBlocEvent.pause() = PauseMiniPlayerEvent;
  const factory MiniPlayerBlocEvent.resume() = ResumeMiniPlayerEvent;
  const factory MiniPlayerBlocEvent.updateLine(Duration position) =
      UpdateLineMiniPlayerEvent;
  const factory MiniPlayerBlocEvent.updateSlider(int newSliderPosition) =
      UpdateSliderLineMiniPlayerEvent;
  const factory MiniPlayerBlocEvent.updateDuration(int newSliderPosition) =
      UpdateDurationLineMiniPlayerEvent;
  const factory MiniPlayerBlocEvent.nextTrack() = NextTrackMiniPlayerEvent;
  const factory MiniPlayerBlocEvent.playAll(bool isPlayAll) =
      PlayAllTrackMiniPlayerEvent;
}
