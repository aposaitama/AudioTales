// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_screen_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterScreenBlocState {
  RegisterStatus get status => throw _privateConstructorUsedError;
  RegisterCodeSentStatus get codeStatus => throw _privateConstructorUsedError;
  String get verigicationId => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;
  bool get isAnonymous => throw _privateConstructorUsedError;

  /// Create a copy of RegisterScreenBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterScreenBlocStateCopyWith<RegisterScreenBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreenBlocStateCopyWith<$Res> {
  factory $RegisterScreenBlocStateCopyWith(RegisterScreenBlocState value,
          $Res Function(RegisterScreenBlocState) then) =
      _$RegisterScreenBlocStateCopyWithImpl<$Res, RegisterScreenBlocState>;
  @useResult
  $Res call(
      {RegisterStatus status,
      RegisterCodeSentStatus codeStatus,
      String verigicationId,
      String phoneNumber,
      bool isAnonymous});
}

/// @nodoc
class _$RegisterScreenBlocStateCopyWithImpl<$Res,
        $Val extends RegisterScreenBlocState>
    implements $RegisterScreenBlocStateCopyWith<$Res> {
  _$RegisterScreenBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterScreenBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? codeStatus = null,
    Object? verigicationId = null,
    Object? phoneNumber = null,
    Object? isAnonymous = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      codeStatus: null == codeStatus
          ? _value.codeStatus
          : codeStatus // ignore: cast_nullable_to_non_nullable
              as RegisterCodeSentStatus,
      verigicationId: null == verigicationId
          ? _value.verigicationId
          : verigicationId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterScreenBlocStateImplCopyWith<$Res>
    implements $RegisterScreenBlocStateCopyWith<$Res> {
  factory _$$RegisterScreenBlocStateImplCopyWith(
          _$RegisterScreenBlocStateImpl value,
          $Res Function(_$RegisterScreenBlocStateImpl) then) =
      __$$RegisterScreenBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RegisterStatus status,
      RegisterCodeSentStatus codeStatus,
      String verigicationId,
      String phoneNumber,
      bool isAnonymous});
}

/// @nodoc
class __$$RegisterScreenBlocStateImplCopyWithImpl<$Res>
    extends _$RegisterScreenBlocStateCopyWithImpl<$Res,
        _$RegisterScreenBlocStateImpl>
    implements _$$RegisterScreenBlocStateImplCopyWith<$Res> {
  __$$RegisterScreenBlocStateImplCopyWithImpl(
      _$RegisterScreenBlocStateImpl _value,
      $Res Function(_$RegisterScreenBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterScreenBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? codeStatus = null,
    Object? verigicationId = null,
    Object? phoneNumber = null,
    Object? isAnonymous = null,
  }) {
    return _then(_$RegisterScreenBlocStateImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RegisterStatus,
      codeStatus: null == codeStatus
          ? _value.codeStatus
          : codeStatus // ignore: cast_nullable_to_non_nullable
              as RegisterCodeSentStatus,
      verigicationId: null == verigicationId
          ? _value.verigicationId
          : verigicationId // ignore: cast_nullable_to_non_nullable
              as String,
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$RegisterScreenBlocStateImpl implements _RegisterScreenBlocState {
  const _$RegisterScreenBlocStateImpl(
      {this.status = RegisterStatus.initial,
      this.codeStatus = RegisterCodeSentStatus.initial,
      this.verigicationId = '',
      this.phoneNumber = '',
      this.isAnonymous = true});

  @override
  @JsonKey()
  final RegisterStatus status;
  @override
  @JsonKey()
  final RegisterCodeSentStatus codeStatus;
  @override
  @JsonKey()
  final String verigicationId;
  @override
  @JsonKey()
  final String phoneNumber;
  @override
  @JsonKey()
  final bool isAnonymous;

  @override
  String toString() {
    return 'RegisterScreenBlocState(status: $status, codeStatus: $codeStatus, verigicationId: $verigicationId, phoneNumber: $phoneNumber, isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterScreenBlocStateImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.codeStatus, codeStatus) ||
                other.codeStatus == codeStatus) &&
            (identical(other.verigicationId, verigicationId) ||
                other.verigicationId == verigicationId) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous));
  }

  @override
  int get hashCode => Object.hash(runtimeType, status, codeStatus,
      verigicationId, phoneNumber, isAnonymous);

  /// Create a copy of RegisterScreenBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterScreenBlocStateImplCopyWith<_$RegisterScreenBlocStateImpl>
      get copyWith => __$$RegisterScreenBlocStateImplCopyWithImpl<
          _$RegisterScreenBlocStateImpl>(this, _$identity);
}

abstract class _RegisterScreenBlocState implements RegisterScreenBlocState {
  const factory _RegisterScreenBlocState(
      {final RegisterStatus status,
      final RegisterCodeSentStatus codeStatus,
      final String verigicationId,
      final String phoneNumber,
      final bool isAnonymous}) = _$RegisterScreenBlocStateImpl;

  @override
  RegisterStatus get status;
  @override
  RegisterCodeSentStatus get codeStatus;
  @override
  String get verigicationId;
  @override
  String get phoneNumber;
  @override
  bool get isAnonymous;

  /// Create a copy of RegisterScreenBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterScreenBlocStateImplCopyWith<_$RegisterScreenBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
