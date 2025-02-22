// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribeToAuthChanges,
    required TResult Function(UserModel userModel) userUpdated,
    required TResult Function() userLoggedOut,
    required TResult Function() editMode,
    required TResult Function(String newUserPhone) sendCode,
    required TResult Function(String otpCode) sendOTP,
    required TResult Function() choosePhoto,
    required TResult Function(String userName, String userPhone) saveInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribeToAuthChanges,
    TResult? Function(UserModel userModel)? userUpdated,
    TResult? Function()? userLoggedOut,
    TResult? Function()? editMode,
    TResult? Function(String newUserPhone)? sendCode,
    TResult? Function(String otpCode)? sendOTP,
    TResult? Function()? choosePhoto,
    TResult? Function(String userName, String userPhone)? saveInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribeToAuthChanges,
    TResult Function(UserModel userModel)? userUpdated,
    TResult Function()? userLoggedOut,
    TResult Function()? editMode,
    TResult Function(String newUserPhone)? sendCode,
    TResult Function(String otpCode)? sendOTP,
    TResult Function()? choosePhoto,
    TResult Function(String userName, String userPhone)? saveInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeToAuthChanges value)
        subscribeToAuthChanges,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserEditMode value) editMode,
    required TResult Function(SendCodeUserBlocEvent value) sendCode,
    required TResult Function(SendOTPUserBlocEvent value) sendOTP,
    required TResult Function(ChoosePhotoEventUserBoc value) choosePhoto,
    required TResult Function(SaveInfoEventUserBoc value) saveInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserEditMode value)? editMode,
    TResult? Function(SendCodeUserBlocEvent value)? sendCode,
    TResult? Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult? Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult? Function(SaveInfoEventUserBoc value)? saveInfo,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserEditMode value)? editMode,
    TResult Function(SendCodeUserBlocEvent value)? sendCode,
    TResult Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult Function(SaveInfoEventUserBoc value)? saveInfo,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlocEventCopyWith<$Res> {
  factory $UserBlocEventCopyWith(
          UserBlocEvent value, $Res Function(UserBlocEvent) then) =
      _$UserBlocEventCopyWithImpl<$Res, UserBlocEvent>;
}

/// @nodoc
class _$UserBlocEventCopyWithImpl<$Res, $Val extends UserBlocEvent>
    implements $UserBlocEventCopyWith<$Res> {
  _$UserBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubscribeToAuthChangesImplCopyWith<$Res> {
  factory _$$SubscribeToAuthChangesImplCopyWith(
          _$SubscribeToAuthChangesImpl value,
          $Res Function(_$SubscribeToAuthChangesImpl) then) =
      __$$SubscribeToAuthChangesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscribeToAuthChangesImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$SubscribeToAuthChangesImpl>
    implements _$$SubscribeToAuthChangesImplCopyWith<$Res> {
  __$$SubscribeToAuthChangesImplCopyWithImpl(
      _$SubscribeToAuthChangesImpl _value,
      $Res Function(_$SubscribeToAuthChangesImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubscribeToAuthChangesImpl implements SubscribeToAuthChanges {
  const _$SubscribeToAuthChangesImpl();

  @override
  String toString() {
    return 'UserBlocEvent.subscribeToAuthChanges()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscribeToAuthChangesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribeToAuthChanges,
    required TResult Function(UserModel userModel) userUpdated,
    required TResult Function() userLoggedOut,
    required TResult Function() editMode,
    required TResult Function(String newUserPhone) sendCode,
    required TResult Function(String otpCode) sendOTP,
    required TResult Function() choosePhoto,
    required TResult Function(String userName, String userPhone) saveInfo,
  }) {
    return subscribeToAuthChanges();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribeToAuthChanges,
    TResult? Function(UserModel userModel)? userUpdated,
    TResult? Function()? userLoggedOut,
    TResult? Function()? editMode,
    TResult? Function(String newUserPhone)? sendCode,
    TResult? Function(String otpCode)? sendOTP,
    TResult? Function()? choosePhoto,
    TResult? Function(String userName, String userPhone)? saveInfo,
  }) {
    return subscribeToAuthChanges?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribeToAuthChanges,
    TResult Function(UserModel userModel)? userUpdated,
    TResult Function()? userLoggedOut,
    TResult Function()? editMode,
    TResult Function(String newUserPhone)? sendCode,
    TResult Function(String otpCode)? sendOTP,
    TResult Function()? choosePhoto,
    TResult Function(String userName, String userPhone)? saveInfo,
    required TResult orElse(),
  }) {
    if (subscribeToAuthChanges != null) {
      return subscribeToAuthChanges();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeToAuthChanges value)
        subscribeToAuthChanges,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserEditMode value) editMode,
    required TResult Function(SendCodeUserBlocEvent value) sendCode,
    required TResult Function(SendOTPUserBlocEvent value) sendOTP,
    required TResult Function(ChoosePhotoEventUserBoc value) choosePhoto,
    required TResult Function(SaveInfoEventUserBoc value) saveInfo,
  }) {
    return subscribeToAuthChanges(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserEditMode value)? editMode,
    TResult? Function(SendCodeUserBlocEvent value)? sendCode,
    TResult? Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult? Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult? Function(SaveInfoEventUserBoc value)? saveInfo,
  }) {
    return subscribeToAuthChanges?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserEditMode value)? editMode,
    TResult Function(SendCodeUserBlocEvent value)? sendCode,
    TResult Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult Function(SaveInfoEventUserBoc value)? saveInfo,
    required TResult orElse(),
  }) {
    if (subscribeToAuthChanges != null) {
      return subscribeToAuthChanges(this);
    }
    return orElse();
  }
}

abstract class SubscribeToAuthChanges implements UserBlocEvent {
  const factory SubscribeToAuthChanges() = _$SubscribeToAuthChangesImpl;
}

/// @nodoc
abstract class _$$UserUpdatedImplCopyWith<$Res> {
  factory _$$UserUpdatedImplCopyWith(
          _$UserUpdatedImpl value, $Res Function(_$UserUpdatedImpl) then) =
      __$$UserUpdatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$UserUpdatedImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$UserUpdatedImpl>
    implements _$$UserUpdatedImplCopyWith<$Res> {
  __$$UserUpdatedImplCopyWithImpl(
      _$UserUpdatedImpl _value, $Res Function(_$UserUpdatedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$UserUpdatedImpl(
      null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value));
    });
  }
}

/// @nodoc

class _$UserUpdatedImpl implements UserUpdated {
  const _$UserUpdatedImpl(this.userModel);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UserBlocEvent.userUpdated(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdatedImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdatedImplCopyWith<_$UserUpdatedImpl> get copyWith =>
      __$$UserUpdatedImplCopyWithImpl<_$UserUpdatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribeToAuthChanges,
    required TResult Function(UserModel userModel) userUpdated,
    required TResult Function() userLoggedOut,
    required TResult Function() editMode,
    required TResult Function(String newUserPhone) sendCode,
    required TResult Function(String otpCode) sendOTP,
    required TResult Function() choosePhoto,
    required TResult Function(String userName, String userPhone) saveInfo,
  }) {
    return userUpdated(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribeToAuthChanges,
    TResult? Function(UserModel userModel)? userUpdated,
    TResult? Function()? userLoggedOut,
    TResult? Function()? editMode,
    TResult? Function(String newUserPhone)? sendCode,
    TResult? Function(String otpCode)? sendOTP,
    TResult? Function()? choosePhoto,
    TResult? Function(String userName, String userPhone)? saveInfo,
  }) {
    return userUpdated?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribeToAuthChanges,
    TResult Function(UserModel userModel)? userUpdated,
    TResult Function()? userLoggedOut,
    TResult Function()? editMode,
    TResult Function(String newUserPhone)? sendCode,
    TResult Function(String otpCode)? sendOTP,
    TResult Function()? choosePhoto,
    TResult Function(String userName, String userPhone)? saveInfo,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeToAuthChanges value)
        subscribeToAuthChanges,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserEditMode value) editMode,
    required TResult Function(SendCodeUserBlocEvent value) sendCode,
    required TResult Function(SendOTPUserBlocEvent value) sendOTP,
    required TResult Function(ChoosePhotoEventUserBoc value) choosePhoto,
    required TResult Function(SaveInfoEventUserBoc value) saveInfo,
  }) {
    return userUpdated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserEditMode value)? editMode,
    TResult? Function(SendCodeUserBlocEvent value)? sendCode,
    TResult? Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult? Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult? Function(SaveInfoEventUserBoc value)? saveInfo,
  }) {
    return userUpdated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserEditMode value)? editMode,
    TResult Function(SendCodeUserBlocEvent value)? sendCode,
    TResult Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult Function(SaveInfoEventUserBoc value)? saveInfo,
    required TResult orElse(),
  }) {
    if (userUpdated != null) {
      return userUpdated(this);
    }
    return orElse();
  }
}

abstract class UserUpdated implements UserBlocEvent {
  const factory UserUpdated(final UserModel userModel) = _$UserUpdatedImpl;

  UserModel get userModel;

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdatedImplCopyWith<_$UserUpdatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UserLoggedOutImplCopyWith<$Res> {
  factory _$$UserLoggedOutImplCopyWith(
          _$UserLoggedOutImpl value, $Res Function(_$UserLoggedOutImpl) then) =
      __$$UserLoggedOutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserLoggedOutImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$UserLoggedOutImpl>
    implements _$$UserLoggedOutImplCopyWith<$Res> {
  __$$UserLoggedOutImplCopyWithImpl(
      _$UserLoggedOutImpl _value, $Res Function(_$UserLoggedOutImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserLoggedOutImpl implements UserLoggedOut {
  const _$UserLoggedOutImpl();

  @override
  String toString() {
    return 'UserBlocEvent.userLoggedOut()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserLoggedOutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribeToAuthChanges,
    required TResult Function(UserModel userModel) userUpdated,
    required TResult Function() userLoggedOut,
    required TResult Function() editMode,
    required TResult Function(String newUserPhone) sendCode,
    required TResult Function(String otpCode) sendOTP,
    required TResult Function() choosePhoto,
    required TResult Function(String userName, String userPhone) saveInfo,
  }) {
    return userLoggedOut();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribeToAuthChanges,
    TResult? Function(UserModel userModel)? userUpdated,
    TResult? Function()? userLoggedOut,
    TResult? Function()? editMode,
    TResult? Function(String newUserPhone)? sendCode,
    TResult? Function(String otpCode)? sendOTP,
    TResult? Function()? choosePhoto,
    TResult? Function(String userName, String userPhone)? saveInfo,
  }) {
    return userLoggedOut?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribeToAuthChanges,
    TResult Function(UserModel userModel)? userUpdated,
    TResult Function()? userLoggedOut,
    TResult Function()? editMode,
    TResult Function(String newUserPhone)? sendCode,
    TResult Function(String otpCode)? sendOTP,
    TResult Function()? choosePhoto,
    TResult Function(String userName, String userPhone)? saveInfo,
    required TResult orElse(),
  }) {
    if (userLoggedOut != null) {
      return userLoggedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeToAuthChanges value)
        subscribeToAuthChanges,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserEditMode value) editMode,
    required TResult Function(SendCodeUserBlocEvent value) sendCode,
    required TResult Function(SendOTPUserBlocEvent value) sendOTP,
    required TResult Function(ChoosePhotoEventUserBoc value) choosePhoto,
    required TResult Function(SaveInfoEventUserBoc value) saveInfo,
  }) {
    return userLoggedOut(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserEditMode value)? editMode,
    TResult? Function(SendCodeUserBlocEvent value)? sendCode,
    TResult? Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult? Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult? Function(SaveInfoEventUserBoc value)? saveInfo,
  }) {
    return userLoggedOut?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserEditMode value)? editMode,
    TResult Function(SendCodeUserBlocEvent value)? sendCode,
    TResult Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult Function(SaveInfoEventUserBoc value)? saveInfo,
    required TResult orElse(),
  }) {
    if (userLoggedOut != null) {
      return userLoggedOut(this);
    }
    return orElse();
  }
}

abstract class UserLoggedOut implements UserBlocEvent {
  const factory UserLoggedOut() = _$UserLoggedOutImpl;
}

/// @nodoc
abstract class _$$UserEditModeImplCopyWith<$Res> {
  factory _$$UserEditModeImplCopyWith(
          _$UserEditModeImpl value, $Res Function(_$UserEditModeImpl) then) =
      __$$UserEditModeImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UserEditModeImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$UserEditModeImpl>
    implements _$$UserEditModeImplCopyWith<$Res> {
  __$$UserEditModeImplCopyWithImpl(
      _$UserEditModeImpl _value, $Res Function(_$UserEditModeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UserEditModeImpl implements UserEditMode {
  const _$UserEditModeImpl();

  @override
  String toString() {
    return 'UserBlocEvent.editMode()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UserEditModeImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribeToAuthChanges,
    required TResult Function(UserModel userModel) userUpdated,
    required TResult Function() userLoggedOut,
    required TResult Function() editMode,
    required TResult Function(String newUserPhone) sendCode,
    required TResult Function(String otpCode) sendOTP,
    required TResult Function() choosePhoto,
    required TResult Function(String userName, String userPhone) saveInfo,
  }) {
    return editMode();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribeToAuthChanges,
    TResult? Function(UserModel userModel)? userUpdated,
    TResult? Function()? userLoggedOut,
    TResult? Function()? editMode,
    TResult? Function(String newUserPhone)? sendCode,
    TResult? Function(String otpCode)? sendOTP,
    TResult? Function()? choosePhoto,
    TResult? Function(String userName, String userPhone)? saveInfo,
  }) {
    return editMode?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribeToAuthChanges,
    TResult Function(UserModel userModel)? userUpdated,
    TResult Function()? userLoggedOut,
    TResult Function()? editMode,
    TResult Function(String newUserPhone)? sendCode,
    TResult Function(String otpCode)? sendOTP,
    TResult Function()? choosePhoto,
    TResult Function(String userName, String userPhone)? saveInfo,
    required TResult orElse(),
  }) {
    if (editMode != null) {
      return editMode();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeToAuthChanges value)
        subscribeToAuthChanges,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserEditMode value) editMode,
    required TResult Function(SendCodeUserBlocEvent value) sendCode,
    required TResult Function(SendOTPUserBlocEvent value) sendOTP,
    required TResult Function(ChoosePhotoEventUserBoc value) choosePhoto,
    required TResult Function(SaveInfoEventUserBoc value) saveInfo,
  }) {
    return editMode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserEditMode value)? editMode,
    TResult? Function(SendCodeUserBlocEvent value)? sendCode,
    TResult? Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult? Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult? Function(SaveInfoEventUserBoc value)? saveInfo,
  }) {
    return editMode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserEditMode value)? editMode,
    TResult Function(SendCodeUserBlocEvent value)? sendCode,
    TResult Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult Function(SaveInfoEventUserBoc value)? saveInfo,
    required TResult orElse(),
  }) {
    if (editMode != null) {
      return editMode(this);
    }
    return orElse();
  }
}

abstract class UserEditMode implements UserBlocEvent {
  const factory UserEditMode() = _$UserEditModeImpl;
}

/// @nodoc
abstract class _$$SendCodeUserBlocEventImplCopyWith<$Res> {
  factory _$$SendCodeUserBlocEventImplCopyWith(
          _$SendCodeUserBlocEventImpl value,
          $Res Function(_$SendCodeUserBlocEventImpl) then) =
      __$$SendCodeUserBlocEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String newUserPhone});
}

/// @nodoc
class __$$SendCodeUserBlocEventImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$SendCodeUserBlocEventImpl>
    implements _$$SendCodeUserBlocEventImplCopyWith<$Res> {
  __$$SendCodeUserBlocEventImplCopyWithImpl(_$SendCodeUserBlocEventImpl _value,
      $Res Function(_$SendCodeUserBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newUserPhone = null,
  }) {
    return _then(_$SendCodeUserBlocEventImpl(
      null == newUserPhone
          ? _value.newUserPhone
          : newUserPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendCodeUserBlocEventImpl implements SendCodeUserBlocEvent {
  const _$SendCodeUserBlocEventImpl(this.newUserPhone);

  @override
  final String newUserPhone;

  @override
  String toString() {
    return 'UserBlocEvent.sendCode(newUserPhone: $newUserPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendCodeUserBlocEventImpl &&
            (identical(other.newUserPhone, newUserPhone) ||
                other.newUserPhone == newUserPhone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, newUserPhone);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendCodeUserBlocEventImplCopyWith<_$SendCodeUserBlocEventImpl>
      get copyWith => __$$SendCodeUserBlocEventImplCopyWithImpl<
          _$SendCodeUserBlocEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribeToAuthChanges,
    required TResult Function(UserModel userModel) userUpdated,
    required TResult Function() userLoggedOut,
    required TResult Function() editMode,
    required TResult Function(String newUserPhone) sendCode,
    required TResult Function(String otpCode) sendOTP,
    required TResult Function() choosePhoto,
    required TResult Function(String userName, String userPhone) saveInfo,
  }) {
    return sendCode(newUserPhone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribeToAuthChanges,
    TResult? Function(UserModel userModel)? userUpdated,
    TResult? Function()? userLoggedOut,
    TResult? Function()? editMode,
    TResult? Function(String newUserPhone)? sendCode,
    TResult? Function(String otpCode)? sendOTP,
    TResult? Function()? choosePhoto,
    TResult? Function(String userName, String userPhone)? saveInfo,
  }) {
    return sendCode?.call(newUserPhone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribeToAuthChanges,
    TResult Function(UserModel userModel)? userUpdated,
    TResult Function()? userLoggedOut,
    TResult Function()? editMode,
    TResult Function(String newUserPhone)? sendCode,
    TResult Function(String otpCode)? sendOTP,
    TResult Function()? choosePhoto,
    TResult Function(String userName, String userPhone)? saveInfo,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(newUserPhone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeToAuthChanges value)
        subscribeToAuthChanges,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserEditMode value) editMode,
    required TResult Function(SendCodeUserBlocEvent value) sendCode,
    required TResult Function(SendOTPUserBlocEvent value) sendOTP,
    required TResult Function(ChoosePhotoEventUserBoc value) choosePhoto,
    required TResult Function(SaveInfoEventUserBoc value) saveInfo,
  }) {
    return sendCode(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserEditMode value)? editMode,
    TResult? Function(SendCodeUserBlocEvent value)? sendCode,
    TResult? Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult? Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult? Function(SaveInfoEventUserBoc value)? saveInfo,
  }) {
    return sendCode?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserEditMode value)? editMode,
    TResult Function(SendCodeUserBlocEvent value)? sendCode,
    TResult Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult Function(SaveInfoEventUserBoc value)? saveInfo,
    required TResult orElse(),
  }) {
    if (sendCode != null) {
      return sendCode(this);
    }
    return orElse();
  }
}

abstract class SendCodeUserBlocEvent implements UserBlocEvent {
  const factory SendCodeUserBlocEvent(final String newUserPhone) =
      _$SendCodeUserBlocEventImpl;

  String get newUserPhone;

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendCodeUserBlocEventImplCopyWith<_$SendCodeUserBlocEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SendOTPUserBlocEventImplCopyWith<$Res> {
  factory _$$SendOTPUserBlocEventImplCopyWith(_$SendOTPUserBlocEventImpl value,
          $Res Function(_$SendOTPUserBlocEventImpl) then) =
      __$$SendOTPUserBlocEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String otpCode});
}

/// @nodoc
class __$$SendOTPUserBlocEventImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$SendOTPUserBlocEventImpl>
    implements _$$SendOTPUserBlocEventImplCopyWith<$Res> {
  __$$SendOTPUserBlocEventImplCopyWithImpl(_$SendOTPUserBlocEventImpl _value,
      $Res Function(_$SendOTPUserBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? otpCode = null,
  }) {
    return _then(_$SendOTPUserBlocEventImpl(
      null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendOTPUserBlocEventImpl implements SendOTPUserBlocEvent {
  const _$SendOTPUserBlocEventImpl(this.otpCode);

  @override
  final String otpCode;

  @override
  String toString() {
    return 'UserBlocEvent.sendOTP(otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendOTPUserBlocEventImpl &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, otpCode);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SendOTPUserBlocEventImplCopyWith<_$SendOTPUserBlocEventImpl>
      get copyWith =>
          __$$SendOTPUserBlocEventImplCopyWithImpl<_$SendOTPUserBlocEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribeToAuthChanges,
    required TResult Function(UserModel userModel) userUpdated,
    required TResult Function() userLoggedOut,
    required TResult Function() editMode,
    required TResult Function(String newUserPhone) sendCode,
    required TResult Function(String otpCode) sendOTP,
    required TResult Function() choosePhoto,
    required TResult Function(String userName, String userPhone) saveInfo,
  }) {
    return sendOTP(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribeToAuthChanges,
    TResult? Function(UserModel userModel)? userUpdated,
    TResult? Function()? userLoggedOut,
    TResult? Function()? editMode,
    TResult? Function(String newUserPhone)? sendCode,
    TResult? Function(String otpCode)? sendOTP,
    TResult? Function()? choosePhoto,
    TResult? Function(String userName, String userPhone)? saveInfo,
  }) {
    return sendOTP?.call(otpCode);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribeToAuthChanges,
    TResult Function(UserModel userModel)? userUpdated,
    TResult Function()? userLoggedOut,
    TResult Function()? editMode,
    TResult Function(String newUserPhone)? sendCode,
    TResult Function(String otpCode)? sendOTP,
    TResult Function()? choosePhoto,
    TResult Function(String userName, String userPhone)? saveInfo,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(otpCode);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeToAuthChanges value)
        subscribeToAuthChanges,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserEditMode value) editMode,
    required TResult Function(SendCodeUserBlocEvent value) sendCode,
    required TResult Function(SendOTPUserBlocEvent value) sendOTP,
    required TResult Function(ChoosePhotoEventUserBoc value) choosePhoto,
    required TResult Function(SaveInfoEventUserBoc value) saveInfo,
  }) {
    return sendOTP(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserEditMode value)? editMode,
    TResult? Function(SendCodeUserBlocEvent value)? sendCode,
    TResult? Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult? Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult? Function(SaveInfoEventUserBoc value)? saveInfo,
  }) {
    return sendOTP?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserEditMode value)? editMode,
    TResult Function(SendCodeUserBlocEvent value)? sendCode,
    TResult Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult Function(SaveInfoEventUserBoc value)? saveInfo,
    required TResult orElse(),
  }) {
    if (sendOTP != null) {
      return sendOTP(this);
    }
    return orElse();
  }
}

abstract class SendOTPUserBlocEvent implements UserBlocEvent {
  const factory SendOTPUserBlocEvent(final String otpCode) =
      _$SendOTPUserBlocEventImpl;

  String get otpCode;

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SendOTPUserBlocEventImplCopyWith<_$SendOTPUserBlocEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChoosePhotoEventUserBocImplCopyWith<$Res> {
  factory _$$ChoosePhotoEventUserBocImplCopyWith(
          _$ChoosePhotoEventUserBocImpl value,
          $Res Function(_$ChoosePhotoEventUserBocImpl) then) =
      __$$ChoosePhotoEventUserBocImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChoosePhotoEventUserBocImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$ChoosePhotoEventUserBocImpl>
    implements _$$ChoosePhotoEventUserBocImplCopyWith<$Res> {
  __$$ChoosePhotoEventUserBocImplCopyWithImpl(
      _$ChoosePhotoEventUserBocImpl _value,
      $Res Function(_$ChoosePhotoEventUserBocImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChoosePhotoEventUserBocImpl implements ChoosePhotoEventUserBoc {
  const _$ChoosePhotoEventUserBocImpl();

  @override
  String toString() {
    return 'UserBlocEvent.choosePhoto()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChoosePhotoEventUserBocImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribeToAuthChanges,
    required TResult Function(UserModel userModel) userUpdated,
    required TResult Function() userLoggedOut,
    required TResult Function() editMode,
    required TResult Function(String newUserPhone) sendCode,
    required TResult Function(String otpCode) sendOTP,
    required TResult Function() choosePhoto,
    required TResult Function(String userName, String userPhone) saveInfo,
  }) {
    return choosePhoto();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribeToAuthChanges,
    TResult? Function(UserModel userModel)? userUpdated,
    TResult? Function()? userLoggedOut,
    TResult? Function()? editMode,
    TResult? Function(String newUserPhone)? sendCode,
    TResult? Function(String otpCode)? sendOTP,
    TResult? Function()? choosePhoto,
    TResult? Function(String userName, String userPhone)? saveInfo,
  }) {
    return choosePhoto?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribeToAuthChanges,
    TResult Function(UserModel userModel)? userUpdated,
    TResult Function()? userLoggedOut,
    TResult Function()? editMode,
    TResult Function(String newUserPhone)? sendCode,
    TResult Function(String otpCode)? sendOTP,
    TResult Function()? choosePhoto,
    TResult Function(String userName, String userPhone)? saveInfo,
    required TResult orElse(),
  }) {
    if (choosePhoto != null) {
      return choosePhoto();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeToAuthChanges value)
        subscribeToAuthChanges,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserEditMode value) editMode,
    required TResult Function(SendCodeUserBlocEvent value) sendCode,
    required TResult Function(SendOTPUserBlocEvent value) sendOTP,
    required TResult Function(ChoosePhotoEventUserBoc value) choosePhoto,
    required TResult Function(SaveInfoEventUserBoc value) saveInfo,
  }) {
    return choosePhoto(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserEditMode value)? editMode,
    TResult? Function(SendCodeUserBlocEvent value)? sendCode,
    TResult? Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult? Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult? Function(SaveInfoEventUserBoc value)? saveInfo,
  }) {
    return choosePhoto?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserEditMode value)? editMode,
    TResult Function(SendCodeUserBlocEvent value)? sendCode,
    TResult Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult Function(SaveInfoEventUserBoc value)? saveInfo,
    required TResult orElse(),
  }) {
    if (choosePhoto != null) {
      return choosePhoto(this);
    }
    return orElse();
  }
}

abstract class ChoosePhotoEventUserBoc implements UserBlocEvent {
  const factory ChoosePhotoEventUserBoc() = _$ChoosePhotoEventUserBocImpl;
}

/// @nodoc
abstract class _$$SaveInfoEventUserBocImplCopyWith<$Res> {
  factory _$$SaveInfoEventUserBocImplCopyWith(_$SaveInfoEventUserBocImpl value,
          $Res Function(_$SaveInfoEventUserBocImpl) then) =
      __$$SaveInfoEventUserBocImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String userName, String userPhone});
}

/// @nodoc
class __$$SaveInfoEventUserBocImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$SaveInfoEventUserBocImpl>
    implements _$$SaveInfoEventUserBocImplCopyWith<$Res> {
  __$$SaveInfoEventUserBocImplCopyWithImpl(_$SaveInfoEventUserBocImpl _value,
      $Res Function(_$SaveInfoEventUserBocImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userName = null,
    Object? userPhone = null,
  }) {
    return _then(_$SaveInfoEventUserBocImpl(
      null == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      null == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SaveInfoEventUserBocImpl implements SaveInfoEventUserBoc {
  const _$SaveInfoEventUserBocImpl(this.userName, this.userPhone);

  @override
  final String userName;
  @override
  final String userPhone;

  @override
  String toString() {
    return 'UserBlocEvent.saveInfo(userName: $userName, userPhone: $userPhone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveInfoEventUserBocImpl &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userName, userPhone);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveInfoEventUserBocImplCopyWith<_$SaveInfoEventUserBocImpl>
      get copyWith =>
          __$$SaveInfoEventUserBocImplCopyWithImpl<_$SaveInfoEventUserBocImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() subscribeToAuthChanges,
    required TResult Function(UserModel userModel) userUpdated,
    required TResult Function() userLoggedOut,
    required TResult Function() editMode,
    required TResult Function(String newUserPhone) sendCode,
    required TResult Function(String otpCode) sendOTP,
    required TResult Function() choosePhoto,
    required TResult Function(String userName, String userPhone) saveInfo,
  }) {
    return saveInfo(userName, userPhone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? subscribeToAuthChanges,
    TResult? Function(UserModel userModel)? userUpdated,
    TResult? Function()? userLoggedOut,
    TResult? Function()? editMode,
    TResult? Function(String newUserPhone)? sendCode,
    TResult? Function(String otpCode)? sendOTP,
    TResult? Function()? choosePhoto,
    TResult? Function(String userName, String userPhone)? saveInfo,
  }) {
    return saveInfo?.call(userName, userPhone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? subscribeToAuthChanges,
    TResult Function(UserModel userModel)? userUpdated,
    TResult Function()? userLoggedOut,
    TResult Function()? editMode,
    TResult Function(String newUserPhone)? sendCode,
    TResult Function(String otpCode)? sendOTP,
    TResult Function()? choosePhoto,
    TResult Function(String userName, String userPhone)? saveInfo,
    required TResult orElse(),
  }) {
    if (saveInfo != null) {
      return saveInfo(userName, userPhone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscribeToAuthChanges value)
        subscribeToAuthChanges,
    required TResult Function(UserUpdated value) userUpdated,
    required TResult Function(UserLoggedOut value) userLoggedOut,
    required TResult Function(UserEditMode value) editMode,
    required TResult Function(SendCodeUserBlocEvent value) sendCode,
    required TResult Function(SendOTPUserBlocEvent value) sendOTP,
    required TResult Function(ChoosePhotoEventUserBoc value) choosePhoto,
    required TResult Function(SaveInfoEventUserBoc value) saveInfo,
  }) {
    return saveInfo(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult? Function(UserUpdated value)? userUpdated,
    TResult? Function(UserLoggedOut value)? userLoggedOut,
    TResult? Function(UserEditMode value)? editMode,
    TResult? Function(SendCodeUserBlocEvent value)? sendCode,
    TResult? Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult? Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult? Function(SaveInfoEventUserBoc value)? saveInfo,
  }) {
    return saveInfo?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscribeToAuthChanges value)? subscribeToAuthChanges,
    TResult Function(UserUpdated value)? userUpdated,
    TResult Function(UserLoggedOut value)? userLoggedOut,
    TResult Function(UserEditMode value)? editMode,
    TResult Function(SendCodeUserBlocEvent value)? sendCode,
    TResult Function(SendOTPUserBlocEvent value)? sendOTP,
    TResult Function(ChoosePhotoEventUserBoc value)? choosePhoto,
    TResult Function(SaveInfoEventUserBoc value)? saveInfo,
    required TResult orElse(),
  }) {
    if (saveInfo != null) {
      return saveInfo(this);
    }
    return orElse();
  }
}

abstract class SaveInfoEventUserBoc implements UserBlocEvent {
  const factory SaveInfoEventUserBoc(
          final String userName, final String userPhone) =
      _$SaveInfoEventUserBocImpl;

  String get userName;
  String get userPhone;

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveInfoEventUserBocImplCopyWith<_$SaveInfoEventUserBocImpl>
      get copyWith => throw _privateConstructorUsedError;
}
