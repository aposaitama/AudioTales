import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/timestamp_converter.dart';
import 'package:memory_box_avada/utils/duration_converter.dart';

part 'simple_collection_model.freezed.dart';
part 'simple_collection_model.g.dart';

@freezed
class SimpleCollectionModel with _$SimpleCollectionModel {
  const factory SimpleCollectionModel({
    required String id,
    required String title,
    required String imageUrl,
    required String collectionDescription,
    required int audioCount,
    @DurationConverter() required Duration duration,
    @TimestampConverter() DateTime? creationTime,
  }) = _SimpleCollectionModel;

  factory SimpleCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$SimpleCollectionModelFromJson(json);
}
