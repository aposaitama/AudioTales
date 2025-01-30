import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_screen_state.freezed.dart';

enum RecordStatus {
  initial,
  inProgress,
  paused,
  stopped,
}

@freezed
class RecordState with _$RecordState {
  const factory RecordState({
    @Default(0.0) double decibels,
    @Default(Duration.zero) Duration duration,
    @Default(RecordStatus.initial) RecordStatus status,
  }) = _RecordState;
}
