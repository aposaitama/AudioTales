import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';

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
    @Default([]) List<AudioRecordsModel> collectionList,
    @Default(CollectionBlocStatus.loading) CollectionBlocStatus status,
  }) = _CollectionBlocState;
}
