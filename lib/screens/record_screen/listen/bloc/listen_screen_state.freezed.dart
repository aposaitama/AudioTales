// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listen_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListenRecordState {
  Duration get duration => throw _privateConstructorUsedError;
  Duration get position => throw _privateConstructorUsedError;
  ListenStatus get status => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;

  /// Create a copy of ListenRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ListenRecordStateCopyWith<ListenRecordState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenRecordStateCopyWith<$Res> {
  factory $ListenRecordStateCopyWith(
          ListenRecordState value, $Res Function(ListenRecordState) then) =
      _$ListenRecordStateCopyWithImpl<$Res, ListenRecordState>;
  @useResult
  $Res call(
      {Duration duration,
      Duration position,
      ListenStatus status,
      String title});
}

/// @nodoc
class _$ListenRecordStateCopyWithImpl<$Res, $Val extends ListenRecordState>
    implements $ListenRecordStateCopyWith<$Res> {
  _$ListenRecordStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListenRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? position = null,
    Object? status = null,
    Object? title = null,
  }) {
    return _then(_value.copyWith(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ListenStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListenRecordStateImplCopyWith<$Res>
    implements $ListenRecordStateCopyWith<$Res> {
  factory _$$ListenRecordStateImplCopyWith(_$ListenRecordStateImpl value,
          $Res Function(_$ListenRecordStateImpl) then) =
      __$$ListenRecordStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Duration duration,
      Duration position,
      ListenStatus status,
      String title});
}

/// @nodoc
class __$$ListenRecordStateImplCopyWithImpl<$Res>
    extends _$ListenRecordStateCopyWithImpl<$Res, _$ListenRecordStateImpl>
    implements _$$ListenRecordStateImplCopyWith<$Res> {
  __$$ListenRecordStateImplCopyWithImpl(_$ListenRecordStateImpl _value,
      $Res Function(_$ListenRecordStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListenRecordState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = null,
    Object? position = null,
    Object? status = null,
    Object? title = null,
  }) {
    return _then(_$ListenRecordStateImpl(
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ListenStatus,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ListenRecordStateImpl implements _ListenRecordState {
  const _$ListenRecordStateImpl(
      {this.duration = Duration.zero,
      this.position = Duration.zero,
      this.status = ListenStatus.initial,
      this.title = 'Аудиозапись'});

  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final Duration position;
  @override
  @JsonKey()
  final ListenStatus status;
  @override
  @JsonKey()
  final String title;

  @override
  String toString() {
    return 'ListenRecordState(duration: $duration, position: $position, status: $status, title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListenRecordStateImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, duration, position, status, title);

  /// Create a copy of ListenRecordState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ListenRecordStateImplCopyWith<_$ListenRecordStateImpl> get copyWith =>
      __$$ListenRecordStateImplCopyWithImpl<_$ListenRecordStateImpl>(
          this, _$identity);
}

abstract class _ListenRecordState implements ListenRecordState {
  const factory _ListenRecordState(
      {final Duration duration,
      final Duration position,
      final ListenStatus status,
      final String title}) = _$ListenRecordStateImpl;

  @override
  Duration get duration;
  @override
  Duration get position;
  @override
  ListenStatus get status;
  @override
  String get title;

  /// Create a copy of ListenRecordState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ListenRecordStateImplCopyWith<_$ListenRecordStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
