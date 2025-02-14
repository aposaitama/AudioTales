import 'package:freezed_annotation/freezed_annotation.dart';

part 'listen_screen_event.freezed.dart';

@freezed
class ListenRecordEvent with _$ListenRecordEvent {
  const factory ListenRecordEvent.initialEv() = InitialPlayingEvent;
  const factory ListenRecordEvent.start(Duration? currentPosition) =
      StartPlayingEvent;
  const factory ListenRecordEvent.updateCircle(
      Duration duration, Duration position,) = UpdateCircleEvent;
  const factory ListenRecordEvent.add15() = Add15Event;
  const factory ListenRecordEvent.minus15() = Minus15Event;
  const factory ListenRecordEvent.pause() = PausePlayingEvent;
  const factory ListenRecordEvent.resume() = ResumePlayingEvent;
  const factory ListenRecordEvent.stop() = StopPlayingEvent;
  const factory ListenRecordEvent.close() = ClosePlayingEvent;
  const factory ListenRecordEvent.addTitle(String title) = AddRecordNameEvent;
}
