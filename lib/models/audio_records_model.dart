import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/timestamp_converter.dart';
import 'package:memory_box_avada/utils/duration_converter.dart';

part 'audio_records_model.freezed.dart';
part 'audio_records_model.g.dart';

@freezed
class AudioRecordsModel with _$AudioRecordsModel {
  const factory AudioRecordsModel({
    required String title,
    required String url,
    @DurationConverter() required Duration duration,
    required String id,
    @TimestampConverter() required DateTime creationTime,
  }) = _AudioRecordsModel;

  factory AudioRecordsModel.fromJson(Map<String, dynamic> json) =>
      _$AudioRecordsModelFromJson(json);
}
