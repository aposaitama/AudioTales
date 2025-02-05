import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';

part 'audio_records_screen_state.freezed.dart';

enum AudioRecordsScreenStatus {
  loading,
  loaded,
  error,
}

@freezed
class AudioRecordsScreenState with _$AudioRecordsScreenState {
  const factory AudioRecordsScreenState({
    @Default([]) List<AudioRecordsModel> audioList,
    @Default(AudioRecordsScreenStatus.loading) AudioRecordsScreenStatus status,
  }) = _AudioRecordsScreenState;
}
