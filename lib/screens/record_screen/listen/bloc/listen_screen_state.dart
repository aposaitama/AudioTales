import 'package:freezed_annotation/freezed_annotation.dart';

part 'listen_screen_state.freezed.dart';

enum ListenStatus {
  initial,
  inProgress,
  pause,
  resume,
  stop,
  close,
  downloaded,
}

enum DownloadListenStatus {
  initial,
  failed,
  successful,
}

@freezed
class ListenRecordState with _$ListenRecordState {
  const factory ListenRecordState({
    @Default(Duration.zero) Duration duration,
    @Default(Duration.zero) Duration position,
    @Default(ListenStatus.initial) ListenStatus status,
    @Default('Аудиозапись') String title,
    @Default(DownloadListenStatus.initial) DownloadListenStatus downloadStatus,
    @Default(false) bool isAudioTitleExist,
  }) = _ListenRecordState;
}
