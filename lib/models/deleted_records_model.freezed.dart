// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'deleted_records_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeletedRecordsModel _$DeletedRecordsModelFromJson(Map<String, dynamic> json) {
  return _DeletedRecordsModel.fromJson(json);
}

/// @nodoc
mixin _$DeletedRecordsModel {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get duration => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get deletedAt => throw _privateConstructorUsedError;

  /// Serializes this DeletedRecordsModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeletedRecordsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeletedRecordsModelCopyWith<DeletedRecordsModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeletedRecordsModelCopyWith<$Res> {
  factory $DeletedRecordsModelCopyWith(
          DeletedRecordsModel value, $Res Function(DeletedRecordsModel) then) =
      _$DeletedRecordsModelCopyWithImpl<$Res, DeletedRecordsModel>;
  @useResult
  $Res call(
      {String id,
      String title,
      String url,
      String duration,
      @TimestampConverter() DateTime deletedAt});
}

/// @nodoc
class _$DeletedRecordsModelCopyWithImpl<$Res, $Val extends DeletedRecordsModel>
    implements $DeletedRecordsModelCopyWith<$Res> {
  _$DeletedRecordsModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeletedRecordsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? duration = null,
    Object? deletedAt = null,
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
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as String,
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeletedRecordsModelImplCopyWith<$Res>
    implements $DeletedRecordsModelCopyWith<$Res> {
  factory _$$DeletedRecordsModelImplCopyWith(_$DeletedRecordsModelImpl value,
          $Res Function(_$DeletedRecordsModelImpl) then) =
      __$$DeletedRecordsModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String url,
      String duration,
      @TimestampConverter() DateTime deletedAt});
}

/// @nodoc
class __$$DeletedRecordsModelImplCopyWithImpl<$Res>
    extends _$DeletedRecordsModelCopyWithImpl<$Res, _$DeletedRecordsModelImpl>
    implements _$$DeletedRecordsModelImplCopyWith<$Res> {
  __$$DeletedRecordsModelImplCopyWithImpl(_$DeletedRecordsModelImpl _value,
      $Res Function(_$DeletedRecordsModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeletedRecordsModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? url = null,
    Object? duration = null,
    Object? deletedAt = null,
  }) {
    return _then(_$DeletedRecordsModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
              as String,
      deletedAt: null == deletedAt
          ? _value.deletedAt
          : deletedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeletedRecordsModelImpl implements _DeletedRecordsModel {
  const _$DeletedRecordsModelImpl(
      {required this.id,
      required this.title,
      required this.url,
      required this.duration,
      @TimestampConverter() required this.deletedAt});

  factory _$DeletedRecordsModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeletedRecordsModelImplFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String url;
  @override
  final String duration;
  @override
  @TimestampConverter()
  final DateTime deletedAt;

  @override
  String toString() {
    return 'DeletedRecordsModel(id: $id, title: $title, url: $url, duration: $duration, deletedAt: $deletedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeletedRecordsModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.deletedAt, deletedAt) ||
                other.deletedAt == deletedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, url, duration, deletedAt);

  /// Create a copy of DeletedRecordsModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeletedRecordsModelImplCopyWith<_$DeletedRecordsModelImpl> get copyWith =>
      __$$DeletedRecordsModelImplCopyWithImpl<_$DeletedRecordsModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeletedRecordsModelImplToJson(
      this,
    );
  }
}

abstract class _DeletedRecordsModel implements DeletedRecordsModel {
  const factory _DeletedRecordsModel(
          {required final String id,
          required final String title,
          required final String url,
          required final String duration,
          @TimestampConverter() required final DateTime deletedAt}) =
      _$DeletedRecordsModelImpl;

  factory _DeletedRecordsModel.fromJson(Map<String, dynamic> json) =
      _$DeletedRecordsModelImpl.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String get url;
  @override
  String get duration;
  @override
  @TimestampConverter()
  DateTime get deletedAt;

  /// Create a copy of DeletedRecordsModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeletedRecordsModelImplCopyWith<_$DeletedRecordsModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
