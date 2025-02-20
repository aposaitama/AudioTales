import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';

part 'audio_records_screen_event.freezed.dart';

@freezed
class AudioRecordsScreenStateEvent with _$AudioRecordsScreenStateEvent {
  const factory AudioRecordsScreenStateEvent.loading() =
      LoadingAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.loaded(
    List<AudioRecordsModel> audioList,
  ) = LoadedAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.share(
    AudioRecordsModel audioElem,
  ) = ShareAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.deleteAudio(String title) =
      DeleteAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.deleteAudioFromCollection(
    String collectionTitle,
    String audioTitle,
  ) = DeleteAudioFromCollectionRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.saveAudio(String newTitle) =
      SaveAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.editAudio(String audioId) =
      EditAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.chooseAudio(
    List<AudioRecordsModel> audio,
  ) = ChooseAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.chooseCollection(
    List<CollectionModel> collectionList,
  ) = ChooseCollectionAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.cancelEditing() =
      CancelEditingAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.changePopupMode(
    AudioPopupStatus popupStatus,
  ) = ChangePopupAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.loadNextPage() =
      LoadNextPageAudioRecordsScreenStateEvent;
  const factory AudioRecordsScreenStateEvent.clearList() =
      ClearListAudioRecordsScreenStateEvent;
}
