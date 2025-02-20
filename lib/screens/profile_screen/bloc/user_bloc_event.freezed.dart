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
    required TResult Function() initial,
    required TResult Function(String id) loading,
    required TResult Function(UserModel userModel) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? loading,
    TResult? Function(UserModel userModel)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? loading,
    TResult Function(UserModel userModel)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserBlocEvent value) initial,
    required TResult Function(LoadingUserBlocEvent value) loading,
    required TResult Function(LoadedUserBlocEvent value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUserBlocEvent value)? initial,
    TResult? Function(LoadingUserBlocEvent value)? loading,
    TResult? Function(LoadedUserBlocEvent value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserBlocEvent value)? initial,
    TResult Function(LoadingUserBlocEvent value)? loading,
    TResult Function(LoadedUserBlocEvent value)? loaded,
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
abstract class _$$InitialUserBlocEventImplCopyWith<$Res> {
  factory _$$InitialUserBlocEventImplCopyWith(_$InitialUserBlocEventImpl value,
          $Res Function(_$InitialUserBlocEventImpl) then) =
      __$$InitialUserBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialUserBlocEventImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$InitialUserBlocEventImpl>
    implements _$$InitialUserBlocEventImplCopyWith<$Res> {
  __$$InitialUserBlocEventImplCopyWithImpl(_$InitialUserBlocEventImpl _value,
      $Res Function(_$InitialUserBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialUserBlocEventImpl implements InitialUserBlocEvent {
  const _$InitialUserBlocEventImpl();

  @override
  String toString() {
    return 'UserBlocEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialUserBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) loading,
    required TResult Function(UserModel userModel) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? loading,
    TResult? Function(UserModel userModel)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? loading,
    TResult Function(UserModel userModel)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserBlocEvent value) initial,
    required TResult Function(LoadingUserBlocEvent value) loading,
    required TResult Function(LoadedUserBlocEvent value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUserBlocEvent value)? initial,
    TResult? Function(LoadingUserBlocEvent value)? loading,
    TResult? Function(LoadedUserBlocEvent value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserBlocEvent value)? initial,
    TResult Function(LoadingUserBlocEvent value)? loading,
    TResult Function(LoadedUserBlocEvent value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class InitialUserBlocEvent implements UserBlocEvent {
  const factory InitialUserBlocEvent() = _$InitialUserBlocEventImpl;
}

/// @nodoc
abstract class _$$LoadingUserBlocEventImplCopyWith<$Res> {
  factory _$$LoadingUserBlocEventImplCopyWith(_$LoadingUserBlocEventImpl value,
          $Res Function(_$LoadingUserBlocEventImpl) then) =
      __$$LoadingUserBlocEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String id});
}

/// @nodoc
class __$$LoadingUserBlocEventImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$LoadingUserBlocEventImpl>
    implements _$$LoadingUserBlocEventImplCopyWith<$Res> {
  __$$LoadingUserBlocEventImplCopyWithImpl(_$LoadingUserBlocEventImpl _value,
      $Res Function(_$LoadingUserBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$LoadingUserBlocEventImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadingUserBlocEventImpl implements LoadingUserBlocEvent {
  const _$LoadingUserBlocEventImpl(this.id);

  @override
  final String id;

  @override
  String toString() {
    return 'UserBlocEvent.loading(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingUserBlocEventImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingUserBlocEventImplCopyWith<_$LoadingUserBlocEventImpl>
      get copyWith =>
          __$$LoadingUserBlocEventImplCopyWithImpl<_$LoadingUserBlocEventImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) loading,
    required TResult Function(UserModel userModel) loaded,
  }) {
    return loading(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? loading,
    TResult? Function(UserModel userModel)? loaded,
  }) {
    return loading?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? loading,
    TResult Function(UserModel userModel)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserBlocEvent value) initial,
    required TResult Function(LoadingUserBlocEvent value) loading,
    required TResult Function(LoadedUserBlocEvent value) loaded,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUserBlocEvent value)? initial,
    TResult? Function(LoadingUserBlocEvent value)? loading,
    TResult? Function(LoadedUserBlocEvent value)? loaded,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserBlocEvent value)? initial,
    TResult Function(LoadingUserBlocEvent value)? loading,
    TResult Function(LoadedUserBlocEvent value)? loaded,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingUserBlocEvent implements UserBlocEvent {
  const factory LoadingUserBlocEvent(final String id) =
      _$LoadingUserBlocEventImpl;

  String get id;

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingUserBlocEventImplCopyWith<_$LoadingUserBlocEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedUserBlocEventImplCopyWith<$Res> {
  factory _$$LoadedUserBlocEventImplCopyWith(_$LoadedUserBlocEventImpl value,
          $Res Function(_$LoadedUserBlocEventImpl) then) =
      __$$LoadedUserBlocEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$LoadedUserBlocEventImplCopyWithImpl<$Res>
    extends _$UserBlocEventCopyWithImpl<$Res, _$LoadedUserBlocEventImpl>
    implements _$$LoadedUserBlocEventImplCopyWith<$Res> {
  __$$LoadedUserBlocEventImplCopyWithImpl(_$LoadedUserBlocEventImpl _value,
      $Res Function(_$LoadedUserBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$LoadedUserBlocEventImpl(
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

class _$LoadedUserBlocEventImpl implements LoadedUserBlocEvent {
  const _$LoadedUserBlocEventImpl(this.userModel);

  @override
  final UserModel userModel;

  @override
  String toString() {
    return 'UserBlocEvent.loaded(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedUserBlocEventImpl &&
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
  _$$LoadedUserBlocEventImplCopyWith<_$LoadedUserBlocEventImpl> get copyWith =>
      __$$LoadedUserBlocEventImplCopyWithImpl<_$LoadedUserBlocEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(String id) loading,
    required TResult Function(UserModel userModel) loaded,
  }) {
    return loaded(userModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(String id)? loading,
    TResult? Function(UserModel userModel)? loaded,
  }) {
    return loaded?.call(userModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(String id)? loading,
    TResult Function(UserModel userModel)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(userModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitialUserBlocEvent value) initial,
    required TResult Function(LoadingUserBlocEvent value) loading,
    required TResult Function(LoadedUserBlocEvent value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitialUserBlocEvent value)? initial,
    TResult? Function(LoadingUserBlocEvent value)? loading,
    TResult? Function(LoadedUserBlocEvent value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitialUserBlocEvent value)? initial,
    TResult Function(LoadingUserBlocEvent value)? loading,
    TResult Function(LoadedUserBlocEvent value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedUserBlocEvent implements UserBlocEvent {
  const factory LoadedUserBlocEvent(final UserModel userModel) =
      _$LoadedUserBlocEventImpl;

  UserModel get userModel;

  /// Create a copy of UserBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedUserBlocEventImplCopyWith<_$LoadedUserBlocEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
