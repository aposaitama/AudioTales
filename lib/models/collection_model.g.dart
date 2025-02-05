// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CollectionModelImpl _$$CollectionModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CollectionModelImpl(
      title: json['title'] as String,
      audiosUrl: json['audiosUrl'] as List<dynamic>,
      imageUrl: json['imageUrl'] as String,
      collectionDescription: json['collectionDescription'] as String,
    );

Map<String, dynamic> _$$CollectionModelImplToJson(
        _$CollectionModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'audiosUrl': instance.audiosUrl,
      'imageUrl': instance.imageUrl,
      'collectionDescription': instance.collectionDescription,
    };
