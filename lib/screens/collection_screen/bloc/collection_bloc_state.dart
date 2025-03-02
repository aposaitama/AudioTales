import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/simple_collection_model.dart';

part 'collection_bloc_state.freezed.dart';

enum CollectionBlocStatus {
  loading,
  loaded,
  error,
}

@freezed
class CollectionBlocState with _$CollectionBlocState {
  const factory CollectionBlocState({
    @Default('') String imagePath,
    @Default('') String imageUrl,
    @Default([]) List<SimpleCollectionModel> collectionList,
    @Default([]) List<AudioRecordsModel> audiosList,
    @Default(CollectionBlocStatus.loading) CollectionBlocStatus status,
    @Default([]) List<SimpleCollectionModel> choosedCollectionList,
    @Default('') String newCollectionTitle,
    @Default('') String newCollectionDescription,
  }) = _CollectionBlocState;
}
