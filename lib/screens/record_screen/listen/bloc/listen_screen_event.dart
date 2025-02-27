import 'package:freezed_annotation/freezed_annotation.dart';

part 'listen_screen_event.freezed.dart';

@freezed
class ListenRecordEvent with _$ListenRecordEvent {
  const factory ListenRecordEvent.initialEv() = InitialPlayingEvent;
  const factory ListenRecordEvent.start(Duration? currentPosition) =
      StartPlayingEvent;
  // const factory ListenRecordEvent.updateCircle(
  //   Duration duration,
  //   Duration position,
  // ) = UpdateCircleEvent;
  const factory ListenRecordEvent.updatePosition(int newSliderPosition) =
      UpdatePositionEvent;
  const factory ListenRecordEvent.updateCircle(int newSliderPosition) =
      UpdateCircleEvent;
  const factory ListenRecordEvent.updateDuration(Duration duration) =
      UpdateDurationEvent;

  const factory ListenRecordEvent.downloadAudio() = DownloadListenRecordEvent;
  const factory ListenRecordEvent.deleteAudio() = DeleteListenRecordEvent;
  const factory ListenRecordEvent.shareAudio() = ShareListenRecordEvent;
  const factory ListenRecordEvent.adjustAudio(bool isAdd) =
      AdjustAudioPositionEvent;
  const factory ListenRecordEvent.pause() = PausePlayingEvent;
  const factory ListenRecordEvent.resume() = ResumePlayingEvent;
  const factory ListenRecordEvent.stop() = StopPlayingEvent;
  const factory ListenRecordEvent.close() = ClosePlayingEvent;
  const factory ListenRecordEvent.addTitle(String title) = AddRecordNameEvent;
}
