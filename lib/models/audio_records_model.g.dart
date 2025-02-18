// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'audio_records_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AudioRecordsModelImpl _$$AudioRecordsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$AudioRecordsModelImpl(
      title: json['title'] as String,
      url: json['url'] as String,
      duration: json['duration'] as String,
      id: json['id'] as String,
      creationTime: const TimestampConverter()
          .fromJson(json['creationTime'] as Timestamp),
    );

Map<String, dynamic> _$$AudioRecordsModelImplToJson(
        _$AudioRecordsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'duration': instance.duration,
      'id': instance.id,
      'creationTime': const TimestampConverter().toJson(instance.creationTime),
    };
