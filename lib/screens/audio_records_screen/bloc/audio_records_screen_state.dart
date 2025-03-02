import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/simple_collection_model.dart';

part 'audio_records_screen_state.freezed.dart';

enum AudioRecordsScreenStatus {
  loading,
  loaded,
  error,
}

enum AudioPopupStatus {
  initial,
  editing,
  addToCollection,
}

@freezed
class AudioRecordsScreenState with _$AudioRecordsScreenState {
  const factory AudioRecordsScreenState({
    @Default([]) List<AudioRecordsModel> audioList,
    @Default(AudioRecordsScreenStatus.loading) AudioRecordsScreenStatus status,
    @Default(AudioPopupStatus.initial) AudioPopupStatus popupStatus,
    @Default([]) List<AudioRecordsModel> choosingAudioList,
    String? editingAudioId,
    String? choosingAudioId,
    List<SimpleCollectionModel>? choosingCollection,
  }) = _AudioRecordsScreenState;
}
