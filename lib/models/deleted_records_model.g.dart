// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'deleted_records_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DeletedRecordsModelImpl _$$DeletedRecordsModelImplFromJson(
        Map<String, dynamic> json) =>
    _$DeletedRecordsModelImpl(
      title: json['title'] as String,
      url: json['url'] as String,
      duration: json['duration'] as String,
      deletedAt:
          const TimestampConverter().fromJson(json['deletedAt'] as Timestamp),
    );

Map<String, dynamic> _$$DeletedRecordsModelImplToJson(
        _$DeletedRecordsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'url': instance.url,
      'duration': instance.duration,
      'deletedAt': const TimestampConverter().toJson(instance.deletedAt),
    };
