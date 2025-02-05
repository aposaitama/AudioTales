import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';

part 'collection_model.freezed.dart';
part 'collection_model.g.dart';

@freezed
class CollectionModel with _$CollectionModel {
  const factory CollectionModel({
    required String title,
    required List<AudioRecordsModel> audiosList,
    required String imageUrl,
    required String collectionDescription,
  }) = _CollectionModel;

  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);
}
