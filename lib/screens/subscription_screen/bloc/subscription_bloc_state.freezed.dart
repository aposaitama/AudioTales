// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubscriptionBlocState {
  Subscription get subscriptionType => throw _privateConstructorUsedError;

  /// Create a copy of SubscriptionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SubscriptionBlocStateCopyWith<SubscriptionBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionBlocStateCopyWith<$Res> {
  factory $SubscriptionBlocStateCopyWith(SubscriptionBlocState value,
          $Res Function(SubscriptionBlocState) then) =
      _$SubscriptionBlocStateCopyWithImpl<$Res, SubscriptionBlocState>;
  @useResult
  $Res call({Subscription subscriptionType});
}

/// @nodoc
class _$SubscriptionBlocStateCopyWithImpl<$Res,
        $Val extends SubscriptionBlocState>
    implements $SubscriptionBlocStateCopyWith<$Res> {
  _$SubscriptionBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionType = null,
  }) {
    return _then(_value.copyWith(
      subscriptionType: null == subscriptionType
          ? _value.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as Subscription,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SubscriptionBlocStateImplCopyWith<$Res>
    implements $SubscriptionBlocStateCopyWith<$Res> {
  factory _$$SubscriptionBlocStateImplCopyWith(
          _$SubscriptionBlocStateImpl value,
          $Res Function(_$SubscriptionBlocStateImpl) then) =
      __$$SubscriptionBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Subscription subscriptionType});
}

/// @nodoc
class __$$SubscriptionBlocStateImplCopyWithImpl<$Res>
    extends _$SubscriptionBlocStateCopyWithImpl<$Res,
        _$SubscriptionBlocStateImpl>
    implements _$$SubscriptionBlocStateImplCopyWith<$Res> {
  __$$SubscriptionBlocStateImplCopyWithImpl(_$SubscriptionBlocStateImpl _value,
      $Res Function(_$SubscriptionBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionType = null,
  }) {
    return _then(_$SubscriptionBlocStateImpl(
      subscriptionType: null == subscriptionType
          ? _value.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as Subscription,
    ));
  }
}

/// @nodoc

class _$SubscriptionBlocStateImpl implements _SubscriptionBlocState {
  const _$SubscriptionBlocStateImpl(
      {this.subscriptionType = Subscription.initial});

  @override
  @JsonKey()
  final Subscription subscriptionType;

  @override
  String toString() {
    return 'SubscriptionBlocState(subscriptionType: $subscriptionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionBlocStateImpl &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptionType);

  /// Create a copy of SubscriptionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionBlocStateImplCopyWith<_$SubscriptionBlocStateImpl>
      get copyWith => __$$SubscriptionBlocStateImplCopyWithImpl<
          _$SubscriptionBlocStateImpl>(this, _$identity);
}

abstract class _SubscriptionBlocState implements SubscriptionBlocState {
  const factory _SubscriptionBlocState({final Subscription subscriptionType}) =
      _$SubscriptionBlocStateImpl;

  @override
  Subscription get subscriptionType;

  /// Create a copy of SubscriptionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionBlocStateImplCopyWith<_$SubscriptionBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
