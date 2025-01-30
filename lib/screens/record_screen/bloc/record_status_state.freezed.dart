// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_status_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecordStatusState {
  RecordCommonStatus get status => throw _privateConstructorUsedError;

  /// Create a copy of RecordStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecordStatusStateCopyWith<RecordStatusState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordStatusStateCopyWith<$Res> {
  factory $RecordStatusStateCopyWith(
          RecordStatusState value, $Res Function(RecordStatusState) then) =
      _$RecordStatusStateCopyWithImpl<$Res, RecordStatusState>;
  @useResult
  $Res call({RecordCommonStatus status});
}

/// @nodoc
class _$RecordStatusStateCopyWithImpl<$Res, $Val extends RecordStatusState>
    implements $RecordStatusStateCopyWith<$Res> {
  _$RecordStatusStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordCommonStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecordStatusStateImplCopyWith<$Res>
    implements $RecordStatusStateCopyWith<$Res> {
  factory _$$RecordStatusStateImplCopyWith(_$RecordStatusStateImpl value,
          $Res Function(_$RecordStatusStateImpl) then) =
      __$$RecordStatusStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({RecordCommonStatus status});
}

/// @nodoc
class __$$RecordStatusStateImplCopyWithImpl<$Res>
    extends _$RecordStatusStateCopyWithImpl<$Res, _$RecordStatusStateImpl>
    implements _$$RecordStatusStateImplCopyWith<$Res> {
  __$$RecordStatusStateImplCopyWithImpl(_$RecordStatusStateImpl _value,
      $Res Function(_$RecordStatusStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordStatusState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
  }) {
    return _then(_$RecordStatusStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecordCommonStatus,
    ));
  }
}

/// @nodoc

class _$RecordStatusStateImpl implements _RecordStatusState {
  const _$RecordStatusStateImpl({this.status = RecordCommonStatus.record});

  @override
  @JsonKey()
  final RecordCommonStatus status;

  @override
  String toString() {
    return 'RecordStatusState(status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecordStatusStateImpl &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status);

  /// Create a copy of RecordStatusState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecordStatusStateImplCopyWith<_$RecordStatusStateImpl> get copyWith =>
      __$$RecordStatusStateImplCopyWithImpl<_$RecordStatusStateImpl>(
          this, _$identity);
}

abstract class _RecordStatusState implements RecordStatusState {
  const factory _RecordStatusState({final RecordCommonStatus status}) =
      _$RecordStatusStateImpl;

  @override
  RecordCommonStatus get status;

  /// Create a copy of RecordStatusState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecordStatusStateImplCopyWith<_$RecordStatusStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
