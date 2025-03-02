// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionModelImpl _$$CollectionModelImplFromJson(
  Map<String, dynamic> json,
) =>
    _$CollectionModelImpl(
      id: json['id'] as String,
      title: json['title'] as String,
      audiosList: (json['audiosList'] as List<dynamic>)
          .map((e) => AudioRecordsModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      imageUrl: json['imageUrl'] as String,
      collectionDescription: json['collectionDescription'] as String,
      creationTime: _$JsonConverterFromJson<Timestamp, DateTime>(
        json['creationTime'],
        const TimestampConverter().fromJson,
      ),
    );

Map<String, dynamic> _$$CollectionModelImplToJson(
  _$CollectionModelImpl instance,
) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'audiosList': instance.audiosList,
      'imageUrl': instance.imageUrl,
      'collectionDescription': instance.collectionDescription,
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
