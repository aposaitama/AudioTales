import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/timestamp_converter.dart';

part 'deleted_records_model.freezed.dart';
part 'deleted_records_model.g.dart';

@freezed
class DeletedRecordsModel with _$DeletedRecordsModel {
  const factory DeletedRecordsModel({
    required String id,
    required String title,
    required String url,
    required String duration,
    @TimestampConverter() required DateTime deletedAt,
  }) = _DeletedRecordsModel;

  factory DeletedRecordsModel.fromJson(Map<String, dynamic> json) =>
      _$DeletedRecordsModelFromJson(json);
}
