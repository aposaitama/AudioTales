// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'simple_collection_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SimpleCollectionModel _$SimpleCollectionModelFromJson(
    Map<String, dynamic> json) {
  return _SimpleCollectionModel.fromJson(json);
}

/// @nodoc
mixin _$SimpleCollectionModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get collectionDescription => throw _privateConstructorUsedError;
  int get audioCount => throw _privateConstructorUsedError;
  @DurationConverter()
  Duration get duration => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime? get creationTime => throw _privateConstructorUsedError;

  /// Serializes this SimpleCollectionModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SimpleCollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SimpleCollectionModelCopyWith<SimpleCollectionModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SimpleCollectionModelCopyWith<$Res> {
  factory $SimpleCollectionModelCopyWith(SimpleCollectionModel value,
          $Res Function(SimpleCollectionModel) then) =
      _$SimpleCollectionModelCopyWithImpl<$Res, SimpleCollectionModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String imageUrl,
      String collectionDescription,
      int audioCount,
      @DurationConverter() Duration duration,
      @TimestampConverter() DateTime? creationTime});
}

/// @nodoc
class _$SimpleCollectionModelCopyWithImpl<$Res,
        $Val extends SimpleCollectionModel>
    implements $SimpleCollectionModelCopyWith<$Res> {
  _$SimpleCollectionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SimpleCollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? collectionDescription = null,
    Object? audioCount = null,
    Object? duration = null,
    Object? creationTime = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      collectionDescription: null == collectionDescription
          ? _value.collectionDescription
          : collectionDescription // ignore: cast_nullable_to_non_nullable
              as String,
      audioCount: null == audioCount
          ? _value.audioCount
          : audioCount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      creationTime: freezed == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SimpleCollectionModelImplCopyWith<$Res>
    implements $SimpleCollectionModelCopyWith<$Res> {
  factory _$$SimpleCollectionModelImplCopyWith(
          _$SimpleCollectionModelImpl value,
          $Res Function(_$SimpleCollectionModelImpl) then) =
      __$$SimpleCollectionModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String imageUrl,
      String collectionDescription,
      int audioCount,
      @DurationConverter() Duration duration,
      @TimestampConverter() DateTime? creationTime});
}

/// @nodoc
class __$$SimpleCollectionModelImplCopyWithImpl<$Res>
    extends _$SimpleCollectionModelCopyWithImpl<$Res,
        _$SimpleCollectionModelImpl>
    implements _$$SimpleCollectionModelImplCopyWith<$Res> {
  __$$SimpleCollectionModelImplCopyWithImpl(_$SimpleCollectionModelImpl _value,
      $Res Function(_$SimpleCollectionModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SimpleCollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? imageUrl = null,
    Object? collectionDescription = null,
    Object? audioCount = null,
    Object? duration = null,
    Object? creationTime = freezed,
  }) {
    return _then(_$SimpleCollectionModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      collectionDescription: null == collectionDescription
          ? _value.collectionDescription
          : collectionDescription // ignore: cast_nullable_to_non_nullable
              as String,
      audioCount: null == audioCount
          ? _value.audioCount
          : audioCount // ignore: cast_nullable_to_non_nullable
              as int,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      creationTime: freezed == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SimpleCollectionModelImpl implements _SimpleCollectionModel {
  const _$SimpleCollectionModelImpl(
      {required this.id,
      required this.title,
      required this.imageUrl,
      required this.collectionDescription,
      required this.audioCount,
      @DurationConverter() required this.duration,
      @TimestampConverter() this.creationTime});

  factory _$SimpleCollectionModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SimpleCollectionModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String imageUrl;
  @override
  final String collectionDescription;
  @override
  final int audioCount;
  @override
  @DurationConverter()
  final Duration duration;
  @override
  @TimestampConverter()
  final DateTime? creationTime;

  @override
  String toString() {
    return 'SimpleCollectionModel(id: $id, title: $title, imageUrl: $imageUrl, collectionDescription: $collectionDescription, audioCount: $audioCount, duration: $duration, creationTime: $creationTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SimpleCollectionModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.collectionDescription, collectionDescription) ||
                other.collectionDescription == collectionDescription) &&
            (identical(other.audioCount, audioCount) ||
                other.audioCount == audioCount) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, imageUrl,
      collectionDescription, audioCount, duration, creationTime);

  /// Create a copy of SimpleCollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SimpleCollectionModelImplCopyWith<_$SimpleCollectionModelImpl>
      get copyWith => __$$SimpleCollectionModelImplCopyWithImpl<
          _$SimpleCollectionModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SimpleCollectionModelImplToJson(
      this,
    );
  }
}

abstract class _SimpleCollectionModel implements SimpleCollectionModel {
  const factory _SimpleCollectionModel(
          {required final String id,
          required final String title,
          required final String imageUrl,
          required final String collectionDescription,
          required final int audioCount,
          @DurationConverter() required final Duration duration,
          @TimestampConverter() final DateTime? creationTime}) =
      _$SimpleCollectionModelImpl;

  factory _SimpleCollectionModel.fromJson(Map<String, dynamic> json) =
      _$SimpleCollectionModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get imageUrl;
  @override
  String get collectionDescription;
  @override
  int get audioCount;
  @override
  @DurationConverter()
  Duration get duration;
  @override
  @TimestampConverter()
  DateTime? get creationTime;

  /// Create a copy of SimpleCollectionModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SimpleCollectionModelImplCopyWith<_$SimpleCollectionModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
