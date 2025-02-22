// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      userId: json['userId'] as String,
      phoneNumber: json['phoneNumber'] as String,
      subscription: $enumDecode(_$SubscriptionEnumMap, json['subscription']),
      duration: const DurationConverter().fromJson(json['duration'] as String),
      userName: json['userName'] as String?,
      userPhoto: json['userPhoto'] as String?,
      audiosCount: (json['audiosCount'] as num).toInt(),
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'phoneNumber': instance.phoneNumber,
      'subscription': _$SubscriptionEnumMap[instance.subscription]!,
      'duration': const DurationConverter().toJson(instance.duration),
      'userName': instance.userName,
      'userPhoto': instance.userPhoto,
      'audiosCount': instance.audiosCount,
    };

const _$SubscriptionEnumMap = {
  Subscription.initial: 'initial',
  Subscription.monthly: 'monthly',
  Subscription.yearly: 'yearly',
};
