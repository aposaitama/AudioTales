// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'subscription_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SubscriptionBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Subscription subscriptionType)
        subscriptionSelected,
    required TResult Function() updateSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Subscription subscriptionType)? subscriptionSelected,
    TResult? Function()? updateSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Subscription subscriptionType)? subscriptionSelected,
    TResult Function()? updateSubscription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionSelected value) subscriptionSelected,
    required TResult Function(SubscriptionUpdate value) updateSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscriptionSelected value)? subscriptionSelected,
    TResult? Function(SubscriptionUpdate value)? updateSubscription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionSelected value)? subscriptionSelected,
    TResult Function(SubscriptionUpdate value)? updateSubscription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SubscriptionBlocEventCopyWith<$Res> {
  factory $SubscriptionBlocEventCopyWith(SubscriptionBlocEvent value,
          $Res Function(SubscriptionBlocEvent) then) =
      _$SubscriptionBlocEventCopyWithImpl<$Res, SubscriptionBlocEvent>;
}

/// @nodoc
class _$SubscriptionBlocEventCopyWithImpl<$Res,
        $Val extends SubscriptionBlocEvent>
    implements $SubscriptionBlocEventCopyWith<$Res> {
  _$SubscriptionBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SubscriptionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$SubscriptionSelectedImplCopyWith<$Res> {
  factory _$$SubscriptionSelectedImplCopyWith(_$SubscriptionSelectedImpl value,
          $Res Function(_$SubscriptionSelectedImpl) then) =
      __$$SubscriptionSelectedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Subscription subscriptionType});
}

/// @nodoc
class __$$SubscriptionSelectedImplCopyWithImpl<$Res>
    extends _$SubscriptionBlocEventCopyWithImpl<$Res,
        _$SubscriptionSelectedImpl>
    implements _$$SubscriptionSelectedImplCopyWith<$Res> {
  __$$SubscriptionSelectedImplCopyWithImpl(_$SubscriptionSelectedImpl _value,
      $Res Function(_$SubscriptionSelectedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscriptionType = null,
  }) {
    return _then(_$SubscriptionSelectedImpl(
      null == subscriptionType
          ? _value.subscriptionType
          : subscriptionType // ignore: cast_nullable_to_non_nullable
              as Subscription,
    ));
  }
}

/// @nodoc

class _$SubscriptionSelectedImpl implements SubscriptionSelected {
  const _$SubscriptionSelectedImpl(this.subscriptionType);

  @override
  final Subscription subscriptionType;

  @override
  String toString() {
    return 'SubscriptionBlocEvent.subscriptionSelected(subscriptionType: $subscriptionType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SubscriptionSelectedImpl &&
            (identical(other.subscriptionType, subscriptionType) ||
                other.subscriptionType == subscriptionType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, subscriptionType);

  /// Create a copy of SubscriptionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SubscriptionSelectedImplCopyWith<_$SubscriptionSelectedImpl>
      get copyWith =>
          __$$SubscriptionSelectedImplCopyWithImpl<_$SubscriptionSelectedImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Subscription subscriptionType)
        subscriptionSelected,
    required TResult Function() updateSubscription,
  }) {
    return subscriptionSelected(subscriptionType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Subscription subscriptionType)? subscriptionSelected,
    TResult? Function()? updateSubscription,
  }) {
    return subscriptionSelected?.call(subscriptionType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Subscription subscriptionType)? subscriptionSelected,
    TResult Function()? updateSubscription,
    required TResult orElse(),
  }) {
    if (subscriptionSelected != null) {
      return subscriptionSelected(subscriptionType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionSelected value) subscriptionSelected,
    required TResult Function(SubscriptionUpdate value) updateSubscription,
  }) {
    return subscriptionSelected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscriptionSelected value)? subscriptionSelected,
    TResult? Function(SubscriptionUpdate value)? updateSubscription,
  }) {
    return subscriptionSelected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionSelected value)? subscriptionSelected,
    TResult Function(SubscriptionUpdate value)? updateSubscription,
    required TResult orElse(),
  }) {
    if (subscriptionSelected != null) {
      return subscriptionSelected(this);
    }
    return orElse();
  }
}

abstract class SubscriptionSelected implements SubscriptionBlocEvent {
  const factory SubscriptionSelected(final Subscription subscriptionType) =
      _$SubscriptionSelectedImpl;

  Subscription get subscriptionType;

  /// Create a copy of SubscriptionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SubscriptionSelectedImplCopyWith<_$SubscriptionSelectedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubscriptionUpdateImplCopyWith<$Res> {
  factory _$$SubscriptionUpdateImplCopyWith(_$SubscriptionUpdateImpl value,
          $Res Function(_$SubscriptionUpdateImpl) then) =
      __$$SubscriptionUpdateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubscriptionUpdateImplCopyWithImpl<$Res>
    extends _$SubscriptionBlocEventCopyWithImpl<$Res, _$SubscriptionUpdateImpl>
    implements _$$SubscriptionUpdateImplCopyWith<$Res> {
  __$$SubscriptionUpdateImplCopyWithImpl(_$SubscriptionUpdateImpl _value,
      $Res Function(_$SubscriptionUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SubscriptionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SubscriptionUpdateImpl implements SubscriptionUpdate {
  const _$SubscriptionUpdateImpl();

  @override
  String toString() {
    return 'SubscriptionBlocEvent.updateSubscription()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubscriptionUpdateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Subscription subscriptionType)
        subscriptionSelected,
    required TResult Function() updateSubscription,
  }) {
    return updateSubscription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Subscription subscriptionType)? subscriptionSelected,
    TResult? Function()? updateSubscription,
  }) {
    return updateSubscription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Subscription subscriptionType)? subscriptionSelected,
    TResult Function()? updateSubscription,
    required TResult orElse(),
  }) {
    if (updateSubscription != null) {
      return updateSubscription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SubscriptionSelected value) subscriptionSelected,
    required TResult Function(SubscriptionUpdate value) updateSubscription,
  }) {
    return updateSubscription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SubscriptionSelected value)? subscriptionSelected,
    TResult? Function(SubscriptionUpdate value)? updateSubscription,
  }) {
    return updateSubscription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SubscriptionSelected value)? subscriptionSelected,
    TResult Function(SubscriptionUpdate value)? updateSubscription,
    required TResult orElse(),
  }) {
    if (updateSubscription != null) {
      return updateSubscription(this);
    }
    return orElse();
  }
}

abstract class SubscriptionUpdate implements SubscriptionBlocEvent {
  const factory SubscriptionUpdate() = _$SubscriptionUpdateImpl;
}
