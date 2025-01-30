import 'package:freezed_annotation/freezed_annotation.dart';

part 'record_status_state.freezed.dart';

enum RecordCommonStatus { initial, record, listen, saved }

@freezed
class RecordStatusState with _$RecordStatusState {
  const factory RecordStatusState({
    @Default(RecordCommonStatus.record) RecordCommonStatus status,
  }) = _RecordStatusState;
}
