// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserBlocState {
  UserModel get userModel => throw _privateConstructorUsedError;

  /// Create a copy of UserBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserBlocStateCopyWith<UserBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserBlocStateCopyWith<$Res> {
  factory $UserBlocStateCopyWith(
          UserBlocState value, $Res Function(UserBlocState) then) =
      _$UserBlocStateCopyWithImpl<$Res, UserBlocState>;
  @useResult
  $Res call({UserModel userModel});

  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class _$UserBlocStateCopyWithImpl<$Res, $Val extends UserBlocState>
    implements $UserBlocStateCopyWith<$Res> {
  _$UserBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_value.copyWith(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ) as $Val);
  }

  /// Create a copy of UserBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserModelCopyWith<$Res> get userModel {
    return $UserModelCopyWith<$Res>(_value.userModel, (value) {
      return _then(_value.copyWith(userModel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserBlocStateImplCopyWith<$Res>
    implements $UserBlocStateCopyWith<$Res> {
  factory _$$UserBlocStateImplCopyWith(
          _$UserBlocStateImpl value, $Res Function(_$UserBlocStateImpl) then) =
      __$$UserBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserModel userModel});

  @override
  $UserModelCopyWith<$Res> get userModel;
}

/// @nodoc
class __$$UserBlocStateImplCopyWithImpl<$Res>
    extends _$UserBlocStateCopyWithImpl<$Res, _$UserBlocStateImpl>
    implements _$$UserBlocStateImplCopyWith<$Res> {
  __$$UserBlocStateImplCopyWithImpl(
      _$UserBlocStateImpl _value, $Res Function(_$UserBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userModel = null,
  }) {
    return _then(_$UserBlocStateImpl(
      userModel: null == userModel
          ? _value.userModel
          : userModel // ignore: cast_nullable_to_non_nullable
              as UserModel,
    ));
  }
}

/// @nodoc

class _$UserBlocStateImpl implements _UserBlocState {
  const _$UserBlocStateImpl(
      {this.userModel = const UserModel(
          userId: '',
          phoneNumber: '',
          subscription: Subscription.initial,
          audiosCount: 0)});

  @override
  @JsonKey()
  final UserModel userModel;

  @override
  String toString() {
    return 'UserBlocState(userModel: $userModel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserBlocStateImpl &&
            (identical(other.userModel, userModel) ||
                other.userModel == userModel));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userModel);

  /// Create a copy of UserBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserBlocStateImplCopyWith<_$UserBlocStateImpl> get copyWith =>
      __$$UserBlocStateImplCopyWithImpl<_$UserBlocStateImpl>(this, _$identity);
}

abstract class _UserBlocState implements UserBlocState {
  const factory _UserBlocState({final UserModel userModel}) =
      _$UserBlocStateImpl;

  @override
  UserModel get userModel;

  /// Create a copy of UserBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserBlocStateImplCopyWith<_$UserBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
