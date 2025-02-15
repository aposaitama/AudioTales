import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/collection_model.dart';

part 'collection_bloc_event.freezed.dart';

@freezed
class CollectionBlocEvent with _$CollectionBlocEvent {
  const factory CollectionBlocEvent.loading() = LoadingCollectionBlocEvent;
  const factory CollectionBlocEvent.loaded(
    List<CollectionModel> collectionList,
  ) = LoadedCollectionBlocEvent;
  const factory CollectionBlocEvent.uploadImage() = UploadImageBlocEvent;
  const factory CollectionBlocEvent.chooseAudios(
    List<AudioRecordsModel> audiosList,
  ) = ChooseAudiosBlocEvent;
  const factory CollectionBlocEvent.createCollection(
    String title,
    String collectionDescription,
  ) = CreateCollectionBlocEvent;
  const factory CollectionBlocEvent.toggleCollectionSelection(
    CollectionModel collection,
  ) = ToggleCollectionSelectionBlocEvent;
}
