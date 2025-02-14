import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';

part 'deleted_records_model.freezed.dart';
part 'deleted_records_model.g.dart';

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) => timestamp.toDate();

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}

@freezed
class DeletedRecordsModel with _$DeletedRecordsModel {
  const factory DeletedRecordsModel({
    required String title,
    required String url,
    required String duration,
    @TimestampConverter() required DateTime deletedAt,
  }) = _DeletedRecordsModel;

  factory DeletedRecordsModel.fromJson(Map<String, dynamic> json) =>
      _$DeletedRecordsModelFromJson(json);
}
