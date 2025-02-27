import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/simple_collection_model.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';
import 'package:memory_box_avada/screens/home_screen/bloc/home_screen_bloc_state.dart';

part 'home_screen_bloc_event.freezed.dart';

@freezed
class HomeScreenBlocEvent with _$HomeScreenBlocEvent {
  const factory HomeScreenBlocEvent.loading() = LoadingHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.loaded(
    List<AudioRecordsModel> audioList,
  ) = LoadedHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.share(
    AudioRecordsModel audioElem,
  ) = ShareHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.deleteAudio(String title) =
      DeleteHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.deleteAudioFromCollection(
    String collectionTitle,
    String audioTitle,
  ) = DeleteAudioFromCollectionRecordsScreenStateEvent;
  const factory HomeScreenBlocEvent.saveAudio(String newTitle) =
      SaveHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.saveAudioInColection(
    String collectionId,
    String newTitle,
  ) = SaveAudioInColectionRecordsScreenStateEvent;
  const factory HomeScreenBlocEvent.editAudio(String audioId) =
      EditHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.chooseAudio(
    List<AudioRecordsModel> audio,
  ) = ChooseHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.chooseCollection(
    List<SimpleCollectionModel> collectionList,
  ) = ChooseCollectionHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.cancelEditing() =
      CancelEditingHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.changePopupMode(
    HomePopupStatus popupStatus,
  ) = ChangePopupHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.loadNextPage() =
      LoadNextPageHomeScreenBlocEvent;
  const factory HomeScreenBlocEvent.clearList() = ClearListHomeScreenBlocEvent;
}
