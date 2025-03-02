// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'simple_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SimpleCollectionModelImpl _$$SimpleCollectionModelImplFromJson(
  Map<String, dynamic> json,
) =>
    _$SimpleCollectionModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      imageUrl: json['imageUrl'] as String,
      collectionDescription: json['collectionDescription'] as String,
      audioCount: (json['audioCount'] as num).toInt(),
      duration: const DurationConverter().fromJson(json['duration'] as String),
      creationTime: _$JsonConverterFromJson<Timestamp, DateTime>(
        json['creationTime'],
        const TimestampConverter().fromJson,
      ),
    );

Map<String, dynamic> _$$SimpleCollectionModelImplToJson(
  _$SimpleCollectionModelImpl instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'imageUrl': instance.imageUrl,
      'collectionDescription': instance.collectionDescription,
      'audioCount': instance.audioCount,
      'duration': const DurationConverter().toJson(instance.duration),
      'creationTime': _$JsonConverterToJson<Timestamp, DateTime>(
        instance.creationTime,
        const TimestampConverter().toJson,
      ),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
