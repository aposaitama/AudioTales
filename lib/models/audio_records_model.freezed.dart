// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_records_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AudioRecordsModel _$AudioRecordsModelFromJson(Map<String, dynamic> json) {
  return _AudioRecordsModel.fromJson(json);
}

/// @nodoc
mixin _$AudioRecordsModel {
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  @DurationConverter()
  Duration get duration => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get creationTime => throw _privateConstructorUsedError;

  /// Serializes this AudioRecordsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AudioRecordsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioRecordsModelCopyWith<AudioRecordsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioRecordsModelCopyWith<$Res> {
  factory $AudioRecordsModelCopyWith(
          AudioRecordsModel value, $Res Function(AudioRecordsModel) then) =
      _$AudioRecordsModelCopyWithImpl<$Res, AudioRecordsModel>;
  @useResult
  $Res call(
      {String title,
      String url,
      @DurationConverter() Duration duration,
      String id,
      @TimestampConverter() DateTime creationTime});
}

/// @nodoc
class _$AudioRecordsModelCopyWithImpl<$Res, $Val extends AudioRecordsModel>
    implements $AudioRecordsModelCopyWith<$Res> {
  _$AudioRecordsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioRecordsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? duration = null,
    Object? id = null,
    Object? creationTime = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioRecordsModelImplCopyWith<$Res>
    implements $AudioRecordsModelCopyWith<$Res> {
  factory _$$AudioRecordsModelImplCopyWith(_$AudioRecordsModelImpl value,
          $Res Function(_$AudioRecordsModelImpl) then) =
      __$$AudioRecordsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String url,
      @DurationConverter() Duration duration,
      String id,
      @TimestampConverter() DateTime creationTime});
}

/// @nodoc
class __$$AudioRecordsModelImplCopyWithImpl<$Res>
    extends _$AudioRecordsModelCopyWithImpl<$Res, _$AudioRecordsModelImpl>
    implements _$$AudioRecordsModelImplCopyWith<$Res> {
  __$$AudioRecordsModelImplCopyWithImpl(_$AudioRecordsModelImpl _value,
      $Res Function(_$AudioRecordsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioRecordsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? url = null,
    Object? duration = null,
    Object? id = null,
    Object? creationTime = null,
  }) {
    return _then(_$AudioRecordsModelImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      creationTime: null == creationTime
          ? _value.creationTime
          : creationTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AudioRecordsModelImpl implements _AudioRecordsModel {
  const _$AudioRecordsModelImpl(
      {required this.title,
      required this.url,
      @DurationConverter() required this.duration,
      required this.id,
      @TimestampConverter() required this.creationTime});

  factory _$AudioRecordsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudioRecordsModelImplFromJson(json);

  @override
  final String title;
  @override
  final String url;
  @override
  @DurationConverter()
  final Duration duration;
  @override
  final String id;
  @override
  @TimestampConverter()
  final DateTime creationTime;

  @override
  String toString() {
    return 'AudioRecordsModel(title: $title, url: $url, duration: $duration, id: $id, creationTime: $creationTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioRecordsModelImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.creationTime, creationTime) ||
                other.creationTime == creationTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, url, duration, id, creationTime);

  /// Create a copy of AudioRecordsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioRecordsModelImplCopyWith<_$AudioRecordsModelImpl> get copyWith =>
      __$$AudioRecordsModelImplCopyWithImpl<_$AudioRecordsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AudioRecordsModelImplToJson(
      this,
    );
  }
}

abstract class _AudioRecordsModel implements AudioRecordsModel {
  const factory _AudioRecordsModel(
          {required final String title,
          required final String url,
          @DurationConverter() required final Duration duration,
          required final String id,
          @TimestampConverter() required final DateTime creationTime}) =
      _$AudioRecordsModelImpl;

  factory _AudioRecordsModel.fromJson(Map<String, dynamic> json) =
      _$AudioRecordsModelImpl.fromJson;

  @override
  String get title;
  @override
  String get url;
  @override
  @DurationConverter()
  Duration get duration;
  @override
  String get id;
  @override
  @TimestampConverter()
  DateTime get creationTime;

  /// Create a copy of AudioRecordsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioRecordsModelImplCopyWith<_$AudioRecordsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
