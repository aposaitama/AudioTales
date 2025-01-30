import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_status_event.freezed.dart';

@freezed
class RecordStatusEvent with _$RecordStatusEvent {
  const factory RecordStatusEvent.recording() = RecordingRecordStatusEvent;
  const factory RecordStatusEvent.listening() = ListeningRecordStatusEvent;
}
