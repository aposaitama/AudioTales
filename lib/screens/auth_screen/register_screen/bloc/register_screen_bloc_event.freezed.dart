// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_screen_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterScreenBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberSubmitted,
    required TResult Function(String otpCode) verificationCodeSubmitted,
    required TResult Function() loginAnonymous,
    required TResult Function() logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberSubmitted,
    TResult? Function(String otpCode)? verificationCodeSubmitted,
    TResult? Function()? loginAnonymous,
    TResult? Function()? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberSubmitted,
    TResult Function(String otpCode)? verificationCodeSubmitted,
    TResult Function()? loginAnonymous,
    TResult Function()? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneSubmittedRegisterScreenBlocEvent value)
        phoneNumberSubmitted,
    required TResult Function(OTPSubmittedRegisterScreenBlocEvent value)
        verificationCodeSubmitted,
    required TResult Function(AnonymousRegisterScreenBlocEvent value)
        loginAnonymous,
    required TResult Function(LogOutRegisterScreenBlocEvent value) logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneSubmittedRegisterScreenBlocEvent value)?
        phoneNumberSubmitted,
    TResult? Function(OTPSubmittedRegisterScreenBlocEvent value)?
        verificationCodeSubmitted,
    TResult? Function(AnonymousRegisterScreenBlocEvent value)? loginAnonymous,
    TResult? Function(LogOutRegisterScreenBlocEvent value)? logOut,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneSubmittedRegisterScreenBlocEvent value)?
        phoneNumberSubmitted,
    TResult Function(OTPSubmittedRegisterScreenBlocEvent value)?
        verificationCodeSubmitted,
    TResult Function(AnonymousRegisterScreenBlocEvent value)? loginAnonymous,
    TResult Function(LogOutRegisterScreenBlocEvent value)? logOut,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreenBlocEventCopyWith<$Res> {
  factory $RegisterScreenBlocEventCopyWith(RegisterScreenBlocEvent value,
          $Res Function(RegisterScreenBlocEvent) then) =
      _$RegisterScreenBlocEventCopyWithImpl<$Res, RegisterScreenBlocEvent>;
}

/// @nodoc
class _$RegisterScreenBlocEventCopyWithImpl<$Res,
        $Val extends RegisterScreenBlocEvent>
    implements $RegisterScreenBlocEventCopyWith<$Res> {
  _$RegisterScreenBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterScreenBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PhoneSubmittedRegisterScreenBlocEventImplCopyWith<$Res> {
  factory _$$PhoneSubmittedRegisterScreenBlocEventImplCopyWith(
          _$PhoneSubmittedRegisterScreenBlocEventImpl value,
          $Res Function(_$PhoneSubmittedRegisterScreenBlocEventImpl) then) =
      __$$PhoneSubmittedRegisterScreenBlocEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String phoneNumber});
}

/// @nodoc
class __$$PhoneSubmittedRegisterScreenBlocEventImplCopyWithImpl<$Res>
    extends _$RegisterScreenBlocEventCopyWithImpl<$Res,
        _$PhoneSubmittedRegisterScreenBlocEventImpl>
    implements _$$PhoneSubmittedRegisterScreenBlocEventImplCopyWith<$Res> {
  __$$PhoneSubmittedRegisterScreenBlocEventImplCopyWithImpl(
      _$PhoneSubmittedRegisterScreenBlocEventImpl _value,
      $Res Function(_$PhoneSubmittedRegisterScreenBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterScreenBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
  }) {
    return _then(_$PhoneSubmittedRegisterScreenBlocEventImpl(
      null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneSubmittedRegisterScreenBlocEventImpl
    implements PhoneSubmittedRegisterScreenBlocEvent {
  const _$PhoneSubmittedRegisterScreenBlocEventImpl(this.phoneNumber);

  @override
  final String phoneNumber;

  @override
  String toString() {
    return 'RegisterScreenBlocEvent.phoneNumberSubmitted(phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneSubmittedRegisterScreenBlocEventImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber);

  /// Create a copy of RegisterScreenBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneSubmittedRegisterScreenBlocEventImplCopyWith<
          _$PhoneSubmittedRegisterScreenBlocEventImpl>
      get copyWith => __$$PhoneSubmittedRegisterScreenBlocEventImplCopyWithImpl<
          _$PhoneSubmittedRegisterScreenBlocEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberSubmitted,
    required TResult Function(String otpCode) verificationCodeSubmitted,
    required TResult Function() loginAnonymous,
    required TResult Function() logOut,
  }) {
    return phoneNumberSubmitted(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberSubmitted,
    TResult? Function(String otpCode)? verificationCodeSubmitted,
    TResult? Function()? loginAnonymous,
    TResult? Function()? logOut,
  }) {
    return phoneNumberSubmitted?.call(phoneNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberSubmitted,
    TResult Function(String otpCode)? verificationCodeSubmitted,
    TResult Function()? loginAnonymous,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (phoneNumberSubmitted != null) {
      return phoneNumberSubmitted(phoneNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneSubmittedRegisterScreenBlocEvent value)
        phoneNumberSubmitted,
    required TResult Function(OTPSubmittedRegisterScreenBlocEvent value)
        verificationCodeSubmitted,
    required TResult Function(AnonymousRegisterScreenBlocEvent value)
        loginAnonymous,
    required TResult Function(LogOutRegisterScreenBlocEvent value) logOut,
  }) {
    return phoneNumberSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneSubmittedRegisterScreenBlocEvent value)?
        phoneNumberSubmitted,
    TResult? Function(OTPSubmittedRegisterScreenBlocEvent value)?
        verificationCodeSubmitted,
    TResult? Function(AnonymousRegisterScreenBlocEvent value)? loginAnonymous,
    TResult? Function(LogOutRegisterScreenBlocEvent value)? logOut,
  }) {
    return phoneNumberSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneSubmittedRegisterScreenBlocEvent value)?
        phoneNumberSubmitted,
    TResult Function(OTPSubmittedRegisterScreenBlocEvent value)?
        verificationCodeSubmitted,
    TResult Function(AnonymousRegisterScreenBlocEvent value)? loginAnonymous,
    TResult Function(LogOutRegisterScreenBlocEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (phoneNumberSubmitted != null) {
      return phoneNumberSubmitted(this);
    }
    return orElse();
  }
}

abstract class PhoneSubmittedRegisterScreenBlocEvent
    implements RegisterScreenBlocEvent {
  const factory PhoneSubmittedRegisterScreenBlocEvent(
      final String phoneNumber) = _$PhoneSubmittedRegisterScreenBlocEventImpl;

  String get phoneNumber;

  /// Create a copy of RegisterScreenBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneSubmittedRegisterScreenBlocEventImplCopyWith<
          _$PhoneSubmittedRegisterScreenBlocEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OTPSubmittedRegisterScreenBlocEventImplCopyWith<$Res> {
  factory _$$OTPSubmittedRegisterScreenBlocEventImplCopyWith(
          _$OTPSubmittedRegisterScreenBlocEventImpl value,
          $Res Function(_$OTPSubmittedRegisterScreenBlocEventImpl) then) =
      __$$OTPSubmittedRegisterScreenBlocEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode});
}

/// @nodoc
class __$$OTPSubmittedRegisterScreenBlocEventImplCopyWithImpl<$Res>
    extends _$RegisterScreenBlocEventCopyWithImpl<$Res,
        _$OTPSubmittedRegisterScreenBlocEventImpl>
    implements _$$OTPSubmittedRegisterScreenBlocEventImplCopyWith<$Res> {
  __$$OTPSubmittedRegisterScreenBlocEventImplCopyWithImpl(
      _$OTPSubmittedRegisterScreenBlocEventImpl _value,
      $Res Function(_$OTPSubmittedRegisterScreenBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterScreenBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$OTPSubmittedRegisterScreenBlocEventImpl(
      null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$OTPSubmittedRegisterScreenBlocEventImpl
    implements OTPSubmittedRegisterScreenBlocEvent {
  const _$OTPSubmittedRegisterScreenBlocEventImpl(this.otpCode);

  @override
  final String otpCode;

  @override
  String toString() {
    return 'RegisterScreenBlocEvent.verificationCodeSubmitted(otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OTPSubmittedRegisterScreenBlocEventImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  /// Create a copy of RegisterScreenBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OTPSubmittedRegisterScreenBlocEventImplCopyWith<
          _$OTPSubmittedRegisterScreenBlocEventImpl>
      get copyWith => __$$OTPSubmittedRegisterScreenBlocEventImplCopyWithImpl<
          _$OTPSubmittedRegisterScreenBlocEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberSubmitted,
    required TResult Function(String otpCode) verificationCodeSubmitted,
    required TResult Function() loginAnonymous,
    required TResult Function() logOut,
  }) {
    return verificationCodeSubmitted(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberSubmitted,
    TResult? Function(String otpCode)? verificationCodeSubmitted,
    TResult? Function()? loginAnonymous,
    TResult? Function()? logOut,
  }) {
    return verificationCodeSubmitted?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberSubmitted,
    TResult Function(String otpCode)? verificationCodeSubmitted,
    TResult Function()? loginAnonymous,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (verificationCodeSubmitted != null) {
      return verificationCodeSubmitted(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneSubmittedRegisterScreenBlocEvent value)
        phoneNumberSubmitted,
    required TResult Function(OTPSubmittedRegisterScreenBlocEvent value)
        verificationCodeSubmitted,
    required TResult Function(AnonymousRegisterScreenBlocEvent value)
        loginAnonymous,
    required TResult Function(LogOutRegisterScreenBlocEvent value) logOut,
  }) {
    return verificationCodeSubmitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneSubmittedRegisterScreenBlocEvent value)?
        phoneNumberSubmitted,
    TResult? Function(OTPSubmittedRegisterScreenBlocEvent value)?
        verificationCodeSubmitted,
    TResult? Function(AnonymousRegisterScreenBlocEvent value)? loginAnonymous,
    TResult? Function(LogOutRegisterScreenBlocEvent value)? logOut,
  }) {
    return verificationCodeSubmitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneSubmittedRegisterScreenBlocEvent value)?
        phoneNumberSubmitted,
    TResult Function(OTPSubmittedRegisterScreenBlocEvent value)?
        verificationCodeSubmitted,
    TResult Function(AnonymousRegisterScreenBlocEvent value)? loginAnonymous,
    TResult Function(LogOutRegisterScreenBlocEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (verificationCodeSubmitted != null) {
      return verificationCodeSubmitted(this);
    }
    return orElse();
  }
}

abstract class OTPSubmittedRegisterScreenBlocEvent
    implements RegisterScreenBlocEvent {
  const factory OTPSubmittedRegisterScreenBlocEvent(final String otpCode) =
      _$OTPSubmittedRegisterScreenBlocEventImpl;

  String get otpCode;

  /// Create a copy of RegisterScreenBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OTPSubmittedRegisterScreenBlocEventImplCopyWith<
          _$OTPSubmittedRegisterScreenBlocEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AnonymousRegisterScreenBlocEventImplCopyWith<$Res> {
  factory _$$AnonymousRegisterScreenBlocEventImplCopyWith(
          _$AnonymousRegisterScreenBlocEventImpl value,
          $Res Function(_$AnonymousRegisterScreenBlocEventImpl) then) =
      __$$AnonymousRegisterScreenBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AnonymousRegisterScreenBlocEventImplCopyWithImpl<$Res>
    extends _$RegisterScreenBlocEventCopyWithImpl<$Res,
        _$AnonymousRegisterScreenBlocEventImpl>
    implements _$$AnonymousRegisterScreenBlocEventImplCopyWith<$Res> {
  __$$AnonymousRegisterScreenBlocEventImplCopyWithImpl(
      _$AnonymousRegisterScreenBlocEventImpl _value,
      $Res Function(_$AnonymousRegisterScreenBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterScreenBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$AnonymousRegisterScreenBlocEventImpl
    implements AnonymousRegisterScreenBlocEvent {
  const _$AnonymousRegisterScreenBlocEventImpl();

  @override
  String toString() {
    return 'RegisterScreenBlocEvent.loginAnonymous()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AnonymousRegisterScreenBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberSubmitted,
    required TResult Function(String otpCode) verificationCodeSubmitted,
    required TResult Function() loginAnonymous,
    required TResult Function() logOut,
  }) {
    return loginAnonymous();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberSubmitted,
    TResult? Function(String otpCode)? verificationCodeSubmitted,
    TResult? Function()? loginAnonymous,
    TResult? Function()? logOut,
  }) {
    return loginAnonymous?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberSubmitted,
    TResult Function(String otpCode)? verificationCodeSubmitted,
    TResult Function()? loginAnonymous,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (loginAnonymous != null) {
      return loginAnonymous();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneSubmittedRegisterScreenBlocEvent value)
        phoneNumberSubmitted,
    required TResult Function(OTPSubmittedRegisterScreenBlocEvent value)
        verificationCodeSubmitted,
    required TResult Function(AnonymousRegisterScreenBlocEvent value)
        loginAnonymous,
    required TResult Function(LogOutRegisterScreenBlocEvent value) logOut,
  }) {
    return loginAnonymous(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneSubmittedRegisterScreenBlocEvent value)?
        phoneNumberSubmitted,
    TResult? Function(OTPSubmittedRegisterScreenBlocEvent value)?
        verificationCodeSubmitted,
    TResult? Function(AnonymousRegisterScreenBlocEvent value)? loginAnonymous,
    TResult? Function(LogOutRegisterScreenBlocEvent value)? logOut,
  }) {
    return loginAnonymous?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneSubmittedRegisterScreenBlocEvent value)?
        phoneNumberSubmitted,
    TResult Function(OTPSubmittedRegisterScreenBlocEvent value)?
        verificationCodeSubmitted,
    TResult Function(AnonymousRegisterScreenBlocEvent value)? loginAnonymous,
    TResult Function(LogOutRegisterScreenBlocEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (loginAnonymous != null) {
      return loginAnonymous(this);
    }
    return orElse();
  }
}

abstract class AnonymousRegisterScreenBlocEvent
    implements RegisterScreenBlocEvent {
  const factory AnonymousRegisterScreenBlocEvent() =
      _$AnonymousRegisterScreenBlocEventImpl;
}

/// @nodoc
abstract class _$$LogOutRegisterScreenBlocEventImplCopyWith<$Res> {
  factory _$$LogOutRegisterScreenBlocEventImplCopyWith(
          _$LogOutRegisterScreenBlocEventImpl value,
          $Res Function(_$LogOutRegisterScreenBlocEventImpl) then) =
      __$$LogOutRegisterScreenBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogOutRegisterScreenBlocEventImplCopyWithImpl<$Res>
    extends _$RegisterScreenBlocEventCopyWithImpl<$Res,
        _$LogOutRegisterScreenBlocEventImpl>
    implements _$$LogOutRegisterScreenBlocEventImplCopyWith<$Res> {
  __$$LogOutRegisterScreenBlocEventImplCopyWithImpl(
      _$LogOutRegisterScreenBlocEventImpl _value,
      $Res Function(_$LogOutRegisterScreenBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterScreenBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogOutRegisterScreenBlocEventImpl
    implements LogOutRegisterScreenBlocEvent {
  const _$LogOutRegisterScreenBlocEventImpl();

  @override
  String toString() {
    return 'RegisterScreenBlocEvent.logOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogOutRegisterScreenBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String phoneNumber) phoneNumberSubmitted,
    required TResult Function(String otpCode) verificationCodeSubmitted,
    required TResult Function() loginAnonymous,
    required TResult Function() logOut,
  }) {
    return logOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String phoneNumber)? phoneNumberSubmitted,
    TResult? Function(String otpCode)? verificationCodeSubmitted,
    TResult? Function()? loginAnonymous,
    TResult? Function()? logOut,
  }) {
    return logOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String phoneNumber)? phoneNumberSubmitted,
    TResult Function(String otpCode)? verificationCodeSubmitted,
    TResult Function()? loginAnonymous,
    TResult Function()? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(PhoneSubmittedRegisterScreenBlocEvent value)
        phoneNumberSubmitted,
    required TResult Function(OTPSubmittedRegisterScreenBlocEvent value)
        verificationCodeSubmitted,
    required TResult Function(AnonymousRegisterScreenBlocEvent value)
        loginAnonymous,
    required TResult Function(LogOutRegisterScreenBlocEvent value) logOut,
  }) {
    return logOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(PhoneSubmittedRegisterScreenBlocEvent value)?
        phoneNumberSubmitted,
    TResult? Function(OTPSubmittedRegisterScreenBlocEvent value)?
        verificationCodeSubmitted,
    TResult? Function(AnonymousRegisterScreenBlocEvent value)? loginAnonymous,
    TResult? Function(LogOutRegisterScreenBlocEvent value)? logOut,
  }) {
    return logOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(PhoneSubmittedRegisterScreenBlocEvent value)?
        phoneNumberSubmitted,
    TResult Function(OTPSubmittedRegisterScreenBlocEvent value)?
        verificationCodeSubmitted,
    TResult Function(AnonymousRegisterScreenBlocEvent value)? loginAnonymous,
    TResult Function(LogOutRegisterScreenBlocEvent value)? logOut,
    required TResult orElse(),
  }) {
    if (logOut != null) {
      return logOut(this);
    }
    return orElse();
  }
}

abstract class LogOutRegisterScreenBlocEvent
    implements RegisterScreenBlocEvent {
  const factory LogOutRegisterScreenBlocEvent() =
      _$LogOutRegisterScreenBlocEventImpl;
}
