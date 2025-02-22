// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get userId => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  Subscription get subscription => throw _privateConstructorUsedError;
  @DurationConverter()
  Duration get duration => throw _privateConstructorUsedError;
  String? get userName => throw _privateConstructorUsedError;
  String? get userPhoto => throw _privateConstructorUsedError;
  int get audiosCount => throw _privateConstructorUsedError;

  /// Serializes this UserModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String userId,
      String phoneNumber,
      Subscription subscription,
      @DurationConverter() Duration duration,
      String? userName,
      String? userPhoto,
      int audiosCount});
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? phoneNumber = null,
    Object? subscription = null,
    Object? duration = null,
    Object? userName = freezed,
    Object? userPhoto = freezed,
    Object? audiosCount = null,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhoto: freezed == userPhoto
          ? _value.userPhoto
          : userPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      audiosCount: null == audiosCount
          ? _value.audiosCount
          : audiosCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String userId,
      String phoneNumber,
      Subscription subscription,
      @DurationConverter() Duration duration,
      String? userName,
      String? userPhoto,
      int audiosCount});
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? phoneNumber = null,
    Object? subscription = null,
    Object? duration = null,
    Object? userName = freezed,
    Object? userPhoto = freezed,
    Object? audiosCount = null,
  }) {
    return _then(_$UserModelImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      subscription: null == subscription
          ? _value.subscription
          : subscription // ignore: cast_nullable_to_non_nullable
              as Subscription,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhoto: freezed == userPhoto
          ? _value.userPhoto
          : userPhoto // ignore: cast_nullable_to_non_nullable
              as String?,
      audiosCount: null == audiosCount
          ? _value.audiosCount
          : audiosCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.userId,
      required this.phoneNumber,
      required this.subscription,
      @DurationConverter() required this.duration,
      this.userName,
      this.userPhoto,
      required this.audiosCount});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String userId;
  @override
  final String phoneNumber;
  @override
  final Subscription subscription;
  @override
  @DurationConverter()
  final Duration duration;
  @override
  final String? userName;
  @override
  final String? userPhoto;
  @override
  final int audiosCount;

  @override
  String toString() {
    return 'UserModel(userId: $userId, phoneNumber: $phoneNumber, subscription: $subscription, duration: $duration, userName: $userName, userPhoto: $userPhoto, audiosCount: $audiosCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.subscription, subscription) ||
                other.subscription == subscription) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhoto, userPhoto) ||
                other.userPhoto == userPhoto) &&
            (identical(other.audiosCount, audiosCount) ||
                other.audiosCount == audiosCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, userId, phoneNumber,
      subscription, duration, userName, userPhoto, audiosCount);

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String userId,
      required final String phoneNumber,
      required final Subscription subscription,
      @DurationConverter() required final Duration duration,
      final String? userName,
      final String? userPhoto,
      required final int audiosCount}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get userId;
  @override
  String get phoneNumber;
  @override
  Subscription get subscription;
  @override
  @DurationConverter()
  Duration get duration;
  @override
  String? get userName;
  @override
  String? get userPhoto;
  @override
  int get audiosCount;

  /// Create a copy of UserModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
