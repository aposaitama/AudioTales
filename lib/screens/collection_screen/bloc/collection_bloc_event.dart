import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/simple_collection_model.dart';

part 'collection_bloc_event.freezed.dart';

@freezed
class CollectionBlocEvent with _$CollectionBlocEvent {
  const factory CollectionBlocEvent.loading() = LoadingCollectionBlocEvent;
  const factory CollectionBlocEvent.loaded(
    List<SimpleCollectionModel> collectionList,
  ) = LoadedCollectionBlocEvent;
  const factory CollectionBlocEvent.uploadImage() = UploadImageBlocEvent;
  const factory CollectionBlocEvent.updateTitle(String title) =
      UpdateTitleBlocEvent;
  const factory CollectionBlocEvent.updateDescription(String descripton) =
      UpdateDescriptionBlocEvent;
  const factory CollectionBlocEvent.chooseAudios(
    List<AudioRecordsModel> audiosList,
  ) = ChooseAudiosBlocEvent;
  const factory CollectionBlocEvent.deleteAudioFromCreateCollection(
    AudioRecordsModel audio,
  ) = DeleteAudioFromCreateCollectionBlocEvent;
  const factory CollectionBlocEvent.createCollection() =
      CreateCollectionBlocEvent;
  const factory CollectionBlocEvent.toggleCollectionSelection(
    SimpleCollectionModel collection,
  ) = ToggleCollectionSelectionBlocEvent;
}
