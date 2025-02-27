import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_screen_event.freezed.dart';

@freezed
class RecordEvent with _$RecordEvent {
  const factory RecordEvent.startRecording() = StartRecordingEvent;
  const factory RecordEvent.updateWave(double decibels, Duration duration) =
      UpdateWaveEvent;
  const factory RecordEvent.stopRecording() = StopRecordingEvent;
  const factory RecordEvent.pauseRecording() = PauseRecordingEvent;
  const factory RecordEvent.resumeRecording() = ResumeRecordingEvent;
  const factory RecordEvent.checkDuration() = CheckDurationRecordingEvent;
}
