import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_records_model.freezed.dart';
part 'audio_records_model.g.dart';

@freezed
class AudioRecordsModel with _$AudioRecordsModel {
  const factory AudioRecordsModel(
      {required String title,
      required String url,
      required String duration}) = _AudioRecordsModel;

  factory AudioRecordsModel.fromJson(Map<String, dynamic> json) =>
      _$AudioRecordsModelFromJson(json);
}
