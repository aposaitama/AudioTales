import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';

part 'audio_records_screen_event.freezed.dart';

@freezed
class AudioRecordsScreenStateEvent with _$AudioRecordsScreenStateEvent {
  const factory AudioRecordsScreenStateEvent.loading() =
      LoadingAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.loaded(
      List<AudioRecordsModel> audioList) = LoadedAudioRecordsScreenStateEvent;

  const factory AudioRecordsScreenStateEvent.deleteAudio(String title) =
      DeleteAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.deleteAudioFromCollection(
          String collectionTitle, String audioTitle) =
      DeleteAudioFromCollectionRecordsScreenStateEvent;
}
