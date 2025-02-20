// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AuthBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkRequested,
    required TResult Function() logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkRequested,
    TResult? Function()? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckRequestedAuthBlocEvent value) checkRequested,
    required TResult Function(LogoutRequestedAuthBlocEvent value)
        logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckRequestedAuthBlocEvent value)? checkRequested,
    TResult? Function(LogoutRequestedAuthBlocEvent value)? logoutRequested,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckRequestedAuthBlocEvent value)? checkRequested,
    TResult Function(LogoutRequestedAuthBlocEvent value)? logoutRequested,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthBlocEventCopyWith<$Res> {
  factory $AuthBlocEventCopyWith(
          AuthBlocEvent value, $Res Function(AuthBlocEvent) then) =
      _$AuthBlocEventCopyWithImpl<$Res, AuthBlocEvent>;
}

/// @nodoc
class _$AuthBlocEventCopyWithImpl<$Res, $Val extends AuthBlocEvent>
    implements $AuthBlocEventCopyWith<$Res> {
  _$AuthBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CheckRequestedAuthBlocEventImplCopyWith<$Res> {
  factory _$$CheckRequestedAuthBlocEventImplCopyWith(
          _$CheckRequestedAuthBlocEventImpl value,
          $Res Function(_$CheckRequestedAuthBlocEventImpl) then) =
      __$$CheckRequestedAuthBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckRequestedAuthBlocEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res, _$CheckRequestedAuthBlocEventImpl>
    implements _$$CheckRequestedAuthBlocEventImplCopyWith<$Res> {
  __$$CheckRequestedAuthBlocEventImplCopyWithImpl(
      _$CheckRequestedAuthBlocEventImpl _value,
      $Res Function(_$CheckRequestedAuthBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckRequestedAuthBlocEventImpl implements CheckRequestedAuthBlocEvent {
  const _$CheckRequestedAuthBlocEventImpl();

  @override
  String toString() {
    return 'AuthBlocEvent.checkRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckRequestedAuthBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkRequested,
    required TResult Function() logoutRequested,
  }) {
    return checkRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkRequested,
    TResult? Function()? logoutRequested,
  }) {
    return checkRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (checkRequested != null) {
      return checkRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckRequestedAuthBlocEvent value) checkRequested,
    required TResult Function(LogoutRequestedAuthBlocEvent value)
        logoutRequested,
  }) {
    return checkRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckRequestedAuthBlocEvent value)? checkRequested,
    TResult? Function(LogoutRequestedAuthBlocEvent value)? logoutRequested,
  }) {
    return checkRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckRequestedAuthBlocEvent value)? checkRequested,
    TResult Function(LogoutRequestedAuthBlocEvent value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (checkRequested != null) {
      return checkRequested(this);
    }
    return orElse();
  }
}

abstract class CheckRequestedAuthBlocEvent implements AuthBlocEvent {
  const factory CheckRequestedAuthBlocEvent() =
      _$CheckRequestedAuthBlocEventImpl;
}

/// @nodoc
abstract class _$$LogoutRequestedAuthBlocEventImplCopyWith<$Res> {
  factory _$$LogoutRequestedAuthBlocEventImplCopyWith(
          _$LogoutRequestedAuthBlocEventImpl value,
          $Res Function(_$LogoutRequestedAuthBlocEventImpl) then) =
      __$$LogoutRequestedAuthBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutRequestedAuthBlocEventImplCopyWithImpl<$Res>
    extends _$AuthBlocEventCopyWithImpl<$Res,
        _$LogoutRequestedAuthBlocEventImpl>
    implements _$$LogoutRequestedAuthBlocEventImplCopyWith<$Res> {
  __$$LogoutRequestedAuthBlocEventImplCopyWithImpl(
      _$LogoutRequestedAuthBlocEventImpl _value,
      $Res Function(_$LogoutRequestedAuthBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutRequestedAuthBlocEventImpl
    implements LogoutRequestedAuthBlocEvent {
  const _$LogoutRequestedAuthBlocEventImpl();

  @override
  String toString() {
    return 'AuthBlocEvent.logoutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutRequestedAuthBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkRequested,
    required TResult Function() logoutRequested,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkRequested,
    TResult? Function()? logoutRequested,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CheckRequestedAuthBlocEvent value) checkRequested,
    required TResult Function(LogoutRequestedAuthBlocEvent value)
        logoutRequested,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CheckRequestedAuthBlocEvent value)? checkRequested,
    TResult? Function(LogoutRequestedAuthBlocEvent value)? logoutRequested,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CheckRequestedAuthBlocEvent value)? checkRequested,
    TResult Function(LogoutRequestedAuthBlocEvent value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class LogoutRequestedAuthBlocEvent implements AuthBlocEvent {
  const factory LogoutRequestedAuthBlocEvent() =
      _$LogoutRequestedAuthBlocEventImpl;
}
