import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/timestamp_converter.dart';

part 'collection_model.freezed.dart';
part 'collection_model.g.dart';

@freezed
class CollectionModel with _$CollectionModel {
  const factory CollectionModel({
    required String id,
    required String title,
    required List<AudioRecordsModel> audiosList,
    required String imageUrl,
    required String collectionDescription,
    @TimestampConverter() DateTime? creationTime,
  }) = _CollectionModel;

  factory CollectionModel.fromJson(Map<String, dynamic> json) =>
      _$CollectionModelFromJson(json);

  factory CollectionModel.initial() => CollectionModel(
        id: '',
        title: '',
        audiosList: [],
        imageUrl: '',
        collectionDescription: '',
        creationTime: DateTime.now(),
      );

  factory CollectionModel.empty() {
    return CollectionModel(
      id: '',
      title: '',
      audiosList: [],
      imageUrl: '',
      collectionDescription: '',
      creationTime: DateTime.now(),
    );
  }
}
