import 'package:freezed_annotation/freezed_annotation.dart';

part 'listen_screen_state.freezed.dart';

enum ListenStatus { initial, inProgress, pause, resume, stop, close }

@freezed
class ListenRecordState with _$ListenRecordState {
  const factory ListenRecordState({
    @Default(Duration.zero) Duration duration,
    @Default(ListenStatus.initial) ListenStatus status,
  }) = _ListenRecordState;
}
