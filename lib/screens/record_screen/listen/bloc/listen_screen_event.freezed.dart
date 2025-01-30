// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'listen_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ListenRecordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? currentPosition) start,
    required TResult Function() updateCircle,
    required TResult Function() add15,
    required TResult Function() minus15,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function() close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? currentPosition)? start,
    TResult? Function()? updateCircle,
    TResult? Function()? add15,
    TResult? Function()? minus15,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function()? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? currentPosition)? start,
    TResult Function()? updateCircle,
    TResult Function()? add15,
    TResult Function()? minus15,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function()? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingEvent value) start,
    required TResult Function(UpdateCircleEvent value) updateCircle,
    required TResult Function(Add15Event value) add15,
    required TResult Function(Minus15Event value) minus15,
    required TResult Function(PausePlayingEvent value) pause,
    required TResult Function(ResumePlayingEvent value) resume,
    required TResult Function(StopPlayingEvent value) stop,
    required TResult Function(ClosePlayingEvent value) close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingEvent value)? start,
    TResult? Function(UpdateCircleEvent value)? updateCircle,
    TResult? Function(Add15Event value)? add15,
    TResult? Function(Minus15Event value)? minus15,
    TResult? Function(PausePlayingEvent value)? pause,
    TResult? Function(ResumePlayingEvent value)? resume,
    TResult? Function(StopPlayingEvent value)? stop,
    TResult? Function(ClosePlayingEvent value)? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingEvent value)? start,
    TResult Function(UpdateCircleEvent value)? updateCircle,
    TResult Function(Add15Event value)? add15,
    TResult Function(Minus15Event value)? minus15,
    TResult Function(PausePlayingEvent value)? pause,
    TResult Function(ResumePlayingEvent value)? resume,
    TResult Function(StopPlayingEvent value)? stop,
    TResult Function(ClosePlayingEvent value)? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListenRecordEventCopyWith<$Res> {
  factory $ListenRecordEventCopyWith(
          ListenRecordEvent value, $Res Function(ListenRecordEvent) then) =
      _$ListenRecordEventCopyWithImpl<$Res, ListenRecordEvent>;
}

/// @nodoc
class _$ListenRecordEventCopyWithImpl<$Res, $Val extends ListenRecordEvent>
    implements $ListenRecordEventCopyWith<$Res> {
  _$ListenRecordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ListenRecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartPlayingEventImplCopyWith<$Res> {
  factory _$$StartPlayingEventImplCopyWith(_$StartPlayingEventImpl value,
          $Res Function(_$StartPlayingEventImpl) then) =
      __$$StartPlayingEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration? currentPosition});
}

/// @nodoc
class __$$StartPlayingEventImplCopyWithImpl<$Res>
    extends _$ListenRecordEventCopyWithImpl<$Res, _$StartPlayingEventImpl>
    implements _$$StartPlayingEventImplCopyWith<$Res> {
  __$$StartPlayingEventImplCopyWithImpl(_$StartPlayingEventImpl _value,
      $Res Function(_$StartPlayingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListenRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPosition = freezed,
  }) {
    return _then(_$StartPlayingEventImpl(
      freezed == currentPosition
          ? _value.currentPosition
          : currentPosition // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc

class _$StartPlayingEventImpl implements StartPlayingEvent {
  const _$StartPlayingEventImpl(this.currentPosition);

  @override
  final Duration? currentPosition;

  @override
  String toString() {
    return 'ListenRecordEvent.start(currentPosition: $currentPosition)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartPlayingEventImpl &&
            (identical(other.currentPosition, currentPosition) ||
                other.currentPosition == currentPosition));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPosition);

  /// Create a copy of ListenRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartPlayingEventImplCopyWith<_$StartPlayingEventImpl> get copyWith =>
      __$$StartPlayingEventImplCopyWithImpl<_$StartPlayingEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? currentPosition) start,
    required TResult Function() updateCircle,
    required TResult Function() add15,
    required TResult Function() minus15,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function() close,
  }) {
    return start(currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? currentPosition)? start,
    TResult? Function()? updateCircle,
    TResult? Function()? add15,
    TResult? Function()? minus15,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function()? close,
  }) {
    return start?.call(currentPosition);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? currentPosition)? start,
    TResult Function()? updateCircle,
    TResult Function()? add15,
    TResult Function()? minus15,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(currentPosition);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingEvent value) start,
    required TResult Function(UpdateCircleEvent value) updateCircle,
    required TResult Function(Add15Event value) add15,
    required TResult Function(Minus15Event value) minus15,
    required TResult Function(PausePlayingEvent value) pause,
    required TResult Function(ResumePlayingEvent value) resume,
    required TResult Function(StopPlayingEvent value) stop,
    required TResult Function(ClosePlayingEvent value) close,
  }) {
    return start(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingEvent value)? start,
    TResult? Function(UpdateCircleEvent value)? updateCircle,
    TResult? Function(Add15Event value)? add15,
    TResult? Function(Minus15Event value)? minus15,
    TResult? Function(PausePlayingEvent value)? pause,
    TResult? Function(ResumePlayingEvent value)? resume,
    TResult? Function(StopPlayingEvent value)? stop,
    TResult? Function(ClosePlayingEvent value)? close,
  }) {
    return start?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingEvent value)? start,
    TResult Function(UpdateCircleEvent value)? updateCircle,
    TResult Function(Add15Event value)? add15,
    TResult Function(Minus15Event value)? minus15,
    TResult Function(PausePlayingEvent value)? pause,
    TResult Function(ResumePlayingEvent value)? resume,
    TResult Function(StopPlayingEvent value)? stop,
    TResult Function(ClosePlayingEvent value)? close,
    required TResult orElse(),
  }) {
    if (start != null) {
      return start(this);
    }
    return orElse();
  }
}

abstract class StartPlayingEvent implements ListenRecordEvent {
  const factory StartPlayingEvent(final Duration? currentPosition) =
      _$StartPlayingEventImpl;

  Duration? get currentPosition;

  /// Create a copy of ListenRecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartPlayingEventImplCopyWith<_$StartPlayingEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateCircleEventImplCopyWith<$Res> {
  factory _$$UpdateCircleEventImplCopyWith(_$UpdateCircleEventImpl value,
          $Res Function(_$UpdateCircleEventImpl) then) =
      __$$UpdateCircleEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UpdateCircleEventImplCopyWithImpl<$Res>
    extends _$ListenRecordEventCopyWithImpl<$Res, _$UpdateCircleEventImpl>
    implements _$$UpdateCircleEventImplCopyWith<$Res> {
  __$$UpdateCircleEventImplCopyWithImpl(_$UpdateCircleEventImpl _value,
      $Res Function(_$UpdateCircleEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListenRecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UpdateCircleEventImpl implements UpdateCircleEvent {
  const _$UpdateCircleEventImpl();

  @override
  String toString() {
    return 'ListenRecordEvent.updateCircle()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UpdateCircleEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? currentPosition) start,
    required TResult Function() updateCircle,
    required TResult Function() add15,
    required TResult Function() minus15,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function() close,
  }) {
    return updateCircle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? currentPosition)? start,
    TResult? Function()? updateCircle,
    TResult? Function()? add15,
    TResult? Function()? minus15,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function()? close,
  }) {
    return updateCircle?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? currentPosition)? start,
    TResult Function()? updateCircle,
    TResult Function()? add15,
    TResult Function()? minus15,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (updateCircle != null) {
      return updateCircle();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingEvent value) start,
    required TResult Function(UpdateCircleEvent value) updateCircle,
    required TResult Function(Add15Event value) add15,
    required TResult Function(Minus15Event value) minus15,
    required TResult Function(PausePlayingEvent value) pause,
    required TResult Function(ResumePlayingEvent value) resume,
    required TResult Function(StopPlayingEvent value) stop,
    required TResult Function(ClosePlayingEvent value) close,
  }) {
    return updateCircle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingEvent value)? start,
    TResult? Function(UpdateCircleEvent value)? updateCircle,
    TResult? Function(Add15Event value)? add15,
    TResult? Function(Minus15Event value)? minus15,
    TResult? Function(PausePlayingEvent value)? pause,
    TResult? Function(ResumePlayingEvent value)? resume,
    TResult? Function(StopPlayingEvent value)? stop,
    TResult? Function(ClosePlayingEvent value)? close,
  }) {
    return updateCircle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingEvent value)? start,
    TResult Function(UpdateCircleEvent value)? updateCircle,
    TResult Function(Add15Event value)? add15,
    TResult Function(Minus15Event value)? minus15,
    TResult Function(PausePlayingEvent value)? pause,
    TResult Function(ResumePlayingEvent value)? resume,
    TResult Function(StopPlayingEvent value)? stop,
    TResult Function(ClosePlayingEvent value)? close,
    required TResult orElse(),
  }) {
    if (updateCircle != null) {
      return updateCircle(this);
    }
    return orElse();
  }
}

abstract class UpdateCircleEvent implements ListenRecordEvent {
  const factory UpdateCircleEvent() = _$UpdateCircleEventImpl;
}

/// @nodoc
abstract class _$$Add15EventImplCopyWith<$Res> {
  factory _$$Add15EventImplCopyWith(
          _$Add15EventImpl value, $Res Function(_$Add15EventImpl) then) =
      __$$Add15EventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$Add15EventImplCopyWithImpl<$Res>
    extends _$ListenRecordEventCopyWithImpl<$Res, _$Add15EventImpl>
    implements _$$Add15EventImplCopyWith<$Res> {
  __$$Add15EventImplCopyWithImpl(
      _$Add15EventImpl _value, $Res Function(_$Add15EventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListenRecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$Add15EventImpl implements Add15Event {
  const _$Add15EventImpl();

  @override
  String toString() {
    return 'ListenRecordEvent.add15()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Add15EventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? currentPosition) start,
    required TResult Function() updateCircle,
    required TResult Function() add15,
    required TResult Function() minus15,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function() close,
  }) {
    return add15();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? currentPosition)? start,
    TResult? Function()? updateCircle,
    TResult? Function()? add15,
    TResult? Function()? minus15,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function()? close,
  }) {
    return add15?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? currentPosition)? start,
    TResult Function()? updateCircle,
    TResult Function()? add15,
    TResult Function()? minus15,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (add15 != null) {
      return add15();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingEvent value) start,
    required TResult Function(UpdateCircleEvent value) updateCircle,
    required TResult Function(Add15Event value) add15,
    required TResult Function(Minus15Event value) minus15,
    required TResult Function(PausePlayingEvent value) pause,
    required TResult Function(ResumePlayingEvent value) resume,
    required TResult Function(StopPlayingEvent value) stop,
    required TResult Function(ClosePlayingEvent value) close,
  }) {
    return add15(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingEvent value)? start,
    TResult? Function(UpdateCircleEvent value)? updateCircle,
    TResult? Function(Add15Event value)? add15,
    TResult? Function(Minus15Event value)? minus15,
    TResult? Function(PausePlayingEvent value)? pause,
    TResult? Function(ResumePlayingEvent value)? resume,
    TResult? Function(StopPlayingEvent value)? stop,
    TResult? Function(ClosePlayingEvent value)? close,
  }) {
    return add15?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingEvent value)? start,
    TResult Function(UpdateCircleEvent value)? updateCircle,
    TResult Function(Add15Event value)? add15,
    TResult Function(Minus15Event value)? minus15,
    TResult Function(PausePlayingEvent value)? pause,
    TResult Function(ResumePlayingEvent value)? resume,
    TResult Function(StopPlayingEvent value)? stop,
    TResult Function(ClosePlayingEvent value)? close,
    required TResult orElse(),
  }) {
    if (add15 != null) {
      return add15(this);
    }
    return orElse();
  }
}

abstract class Add15Event implements ListenRecordEvent {
  const factory Add15Event() = _$Add15EventImpl;
}

/// @nodoc
abstract class _$$Minus15EventImplCopyWith<$Res> {
  factory _$$Minus15EventImplCopyWith(
          _$Minus15EventImpl value, $Res Function(_$Minus15EventImpl) then) =
      __$$Minus15EventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$Minus15EventImplCopyWithImpl<$Res>
    extends _$ListenRecordEventCopyWithImpl<$Res, _$Minus15EventImpl>
    implements _$$Minus15EventImplCopyWith<$Res> {
  __$$Minus15EventImplCopyWithImpl(
      _$Minus15EventImpl _value, $Res Function(_$Minus15EventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListenRecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$Minus15EventImpl implements Minus15Event {
  const _$Minus15EventImpl();

  @override
  String toString() {
    return 'ListenRecordEvent.minus15()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Minus15EventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? currentPosition) start,
    required TResult Function() updateCircle,
    required TResult Function() add15,
    required TResult Function() minus15,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function() close,
  }) {
    return minus15();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? currentPosition)? start,
    TResult? Function()? updateCircle,
    TResult? Function()? add15,
    TResult? Function()? minus15,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function()? close,
  }) {
    return minus15?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? currentPosition)? start,
    TResult Function()? updateCircle,
    TResult Function()? add15,
    TResult Function()? minus15,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (minus15 != null) {
      return minus15();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingEvent value) start,
    required TResult Function(UpdateCircleEvent value) updateCircle,
    required TResult Function(Add15Event value) add15,
    required TResult Function(Minus15Event value) minus15,
    required TResult Function(PausePlayingEvent value) pause,
    required TResult Function(ResumePlayingEvent value) resume,
    required TResult Function(StopPlayingEvent value) stop,
    required TResult Function(ClosePlayingEvent value) close,
  }) {
    return minus15(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingEvent value)? start,
    TResult? Function(UpdateCircleEvent value)? updateCircle,
    TResult? Function(Add15Event value)? add15,
    TResult? Function(Minus15Event value)? minus15,
    TResult? Function(PausePlayingEvent value)? pause,
    TResult? Function(ResumePlayingEvent value)? resume,
    TResult? Function(StopPlayingEvent value)? stop,
    TResult? Function(ClosePlayingEvent value)? close,
  }) {
    return minus15?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingEvent value)? start,
    TResult Function(UpdateCircleEvent value)? updateCircle,
    TResult Function(Add15Event value)? add15,
    TResult Function(Minus15Event value)? minus15,
    TResult Function(PausePlayingEvent value)? pause,
    TResult Function(ResumePlayingEvent value)? resume,
    TResult Function(StopPlayingEvent value)? stop,
    TResult Function(ClosePlayingEvent value)? close,
    required TResult orElse(),
  }) {
    if (minus15 != null) {
      return minus15(this);
    }
    return orElse();
  }
}

abstract class Minus15Event implements ListenRecordEvent {
  const factory Minus15Event() = _$Minus15EventImpl;
}

/// @nodoc
abstract class _$$PausePlayingEventImplCopyWith<$Res> {
  factory _$$PausePlayingEventImplCopyWith(_$PausePlayingEventImpl value,
          $Res Function(_$PausePlayingEventImpl) then) =
      __$$PausePlayingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PausePlayingEventImplCopyWithImpl<$Res>
    extends _$ListenRecordEventCopyWithImpl<$Res, _$PausePlayingEventImpl>
    implements _$$PausePlayingEventImplCopyWith<$Res> {
  __$$PausePlayingEventImplCopyWithImpl(_$PausePlayingEventImpl _value,
      $Res Function(_$PausePlayingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListenRecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PausePlayingEventImpl implements PausePlayingEvent {
  const _$PausePlayingEventImpl();

  @override
  String toString() {
    return 'ListenRecordEvent.pause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PausePlayingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? currentPosition) start,
    required TResult Function() updateCircle,
    required TResult Function() add15,
    required TResult Function() minus15,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function() close,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? currentPosition)? start,
    TResult? Function()? updateCircle,
    TResult? Function()? add15,
    TResult? Function()? minus15,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function()? close,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? currentPosition)? start,
    TResult Function()? updateCircle,
    TResult Function()? add15,
    TResult Function()? minus15,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingEvent value) start,
    required TResult Function(UpdateCircleEvent value) updateCircle,
    required TResult Function(Add15Event value) add15,
    required TResult Function(Minus15Event value) minus15,
    required TResult Function(PausePlayingEvent value) pause,
    required TResult Function(ResumePlayingEvent value) resume,
    required TResult Function(StopPlayingEvent value) stop,
    required TResult Function(ClosePlayingEvent value) close,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingEvent value)? start,
    TResult? Function(UpdateCircleEvent value)? updateCircle,
    TResult? Function(Add15Event value)? add15,
    TResult? Function(Minus15Event value)? minus15,
    TResult? Function(PausePlayingEvent value)? pause,
    TResult? Function(ResumePlayingEvent value)? resume,
    TResult? Function(StopPlayingEvent value)? stop,
    TResult? Function(ClosePlayingEvent value)? close,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingEvent value)? start,
    TResult Function(UpdateCircleEvent value)? updateCircle,
    TResult Function(Add15Event value)? add15,
    TResult Function(Minus15Event value)? minus15,
    TResult Function(PausePlayingEvent value)? pause,
    TResult Function(ResumePlayingEvent value)? resume,
    TResult Function(StopPlayingEvent value)? stop,
    TResult Function(ClosePlayingEvent value)? close,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class PausePlayingEvent implements ListenRecordEvent {
  const factory PausePlayingEvent() = _$PausePlayingEventImpl;
}

/// @nodoc
abstract class _$$ResumePlayingEventImplCopyWith<$Res> {
  factory _$$ResumePlayingEventImplCopyWith(_$ResumePlayingEventImpl value,
          $Res Function(_$ResumePlayingEventImpl) then) =
      __$$ResumePlayingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumePlayingEventImplCopyWithImpl<$Res>
    extends _$ListenRecordEventCopyWithImpl<$Res, _$ResumePlayingEventImpl>
    implements _$$ResumePlayingEventImplCopyWith<$Res> {
  __$$ResumePlayingEventImplCopyWithImpl(_$ResumePlayingEventImpl _value,
      $Res Function(_$ResumePlayingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListenRecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResumePlayingEventImpl implements ResumePlayingEvent {
  const _$ResumePlayingEventImpl();

  @override
  String toString() {
    return 'ListenRecordEvent.resume()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ResumePlayingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? currentPosition) start,
    required TResult Function() updateCircle,
    required TResult Function() add15,
    required TResult Function() minus15,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function() close,
  }) {
    return resume();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? currentPosition)? start,
    TResult? Function()? updateCircle,
    TResult? Function()? add15,
    TResult? Function()? minus15,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function()? close,
  }) {
    return resume?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? currentPosition)? start,
    TResult Function()? updateCircle,
    TResult Function()? add15,
    TResult Function()? minus15,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingEvent value) start,
    required TResult Function(UpdateCircleEvent value) updateCircle,
    required TResult Function(Add15Event value) add15,
    required TResult Function(Minus15Event value) minus15,
    required TResult Function(PausePlayingEvent value) pause,
    required TResult Function(ResumePlayingEvent value) resume,
    required TResult Function(StopPlayingEvent value) stop,
    required TResult Function(ClosePlayingEvent value) close,
  }) {
    return resume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingEvent value)? start,
    TResult? Function(UpdateCircleEvent value)? updateCircle,
    TResult? Function(Add15Event value)? add15,
    TResult? Function(Minus15Event value)? minus15,
    TResult? Function(PausePlayingEvent value)? pause,
    TResult? Function(ResumePlayingEvent value)? resume,
    TResult? Function(StopPlayingEvent value)? stop,
    TResult? Function(ClosePlayingEvent value)? close,
  }) {
    return resume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingEvent value)? start,
    TResult Function(UpdateCircleEvent value)? updateCircle,
    TResult Function(Add15Event value)? add15,
    TResult Function(Minus15Event value)? minus15,
    TResult Function(PausePlayingEvent value)? pause,
    TResult Function(ResumePlayingEvent value)? resume,
    TResult Function(StopPlayingEvent value)? stop,
    TResult Function(ClosePlayingEvent value)? close,
    required TResult orElse(),
  }) {
    if (resume != null) {
      return resume(this);
    }
    return orElse();
  }
}

abstract class ResumePlayingEvent implements ListenRecordEvent {
  const factory ResumePlayingEvent() = _$ResumePlayingEventImpl;
}

/// @nodoc
abstract class _$$StopPlayingEventImplCopyWith<$Res> {
  factory _$$StopPlayingEventImplCopyWith(_$StopPlayingEventImpl value,
          $Res Function(_$StopPlayingEventImpl) then) =
      __$$StopPlayingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopPlayingEventImplCopyWithImpl<$Res>
    extends _$ListenRecordEventCopyWithImpl<$Res, _$StopPlayingEventImpl>
    implements _$$StopPlayingEventImplCopyWith<$Res> {
  __$$StopPlayingEventImplCopyWithImpl(_$StopPlayingEventImpl _value,
      $Res Function(_$StopPlayingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListenRecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopPlayingEventImpl implements StopPlayingEvent {
  const _$StopPlayingEventImpl();

  @override
  String toString() {
    return 'ListenRecordEvent.stop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopPlayingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? currentPosition) start,
    required TResult Function() updateCircle,
    required TResult Function() add15,
    required TResult Function() minus15,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function() close,
  }) {
    return stop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? currentPosition)? start,
    TResult? Function()? updateCircle,
    TResult? Function()? add15,
    TResult? Function()? minus15,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function()? close,
  }) {
    return stop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? currentPosition)? start,
    TResult Function()? updateCircle,
    TResult Function()? add15,
    TResult Function()? minus15,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingEvent value) start,
    required TResult Function(UpdateCircleEvent value) updateCircle,
    required TResult Function(Add15Event value) add15,
    required TResult Function(Minus15Event value) minus15,
    required TResult Function(PausePlayingEvent value) pause,
    required TResult Function(ResumePlayingEvent value) resume,
    required TResult Function(StopPlayingEvent value) stop,
    required TResult Function(ClosePlayingEvent value) close,
  }) {
    return stop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingEvent value)? start,
    TResult? Function(UpdateCircleEvent value)? updateCircle,
    TResult? Function(Add15Event value)? add15,
    TResult? Function(Minus15Event value)? minus15,
    TResult? Function(PausePlayingEvent value)? pause,
    TResult? Function(ResumePlayingEvent value)? resume,
    TResult? Function(StopPlayingEvent value)? stop,
    TResult? Function(ClosePlayingEvent value)? close,
  }) {
    return stop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingEvent value)? start,
    TResult Function(UpdateCircleEvent value)? updateCircle,
    TResult Function(Add15Event value)? add15,
    TResult Function(Minus15Event value)? minus15,
    TResult Function(PausePlayingEvent value)? pause,
    TResult Function(ResumePlayingEvent value)? resume,
    TResult Function(StopPlayingEvent value)? stop,
    TResult Function(ClosePlayingEvent value)? close,
    required TResult orElse(),
  }) {
    if (stop != null) {
      return stop(this);
    }
    return orElse();
  }
}

abstract class StopPlayingEvent implements ListenRecordEvent {
  const factory StopPlayingEvent() = _$StopPlayingEventImpl;
}

/// @nodoc
abstract class _$$ClosePlayingEventImplCopyWith<$Res> {
  factory _$$ClosePlayingEventImplCopyWith(_$ClosePlayingEventImpl value,
          $Res Function(_$ClosePlayingEventImpl) then) =
      __$$ClosePlayingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClosePlayingEventImplCopyWithImpl<$Res>
    extends _$ListenRecordEventCopyWithImpl<$Res, _$ClosePlayingEventImpl>
    implements _$$ClosePlayingEventImplCopyWith<$Res> {
  __$$ClosePlayingEventImplCopyWithImpl(_$ClosePlayingEventImpl _value,
      $Res Function(_$ClosePlayingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ListenRecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClosePlayingEventImpl implements ClosePlayingEvent {
  const _$ClosePlayingEventImpl();

  @override
  String toString() {
    return 'ListenRecordEvent.close()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClosePlayingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Duration? currentPosition) start,
    required TResult Function() updateCircle,
    required TResult Function() add15,
    required TResult Function() minus15,
    required TResult Function() pause,
    required TResult Function() resume,
    required TResult Function() stop,
    required TResult Function() close,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Duration? currentPosition)? start,
    TResult? Function()? updateCircle,
    TResult? Function()? add15,
    TResult? Function()? minus15,
    TResult? Function()? pause,
    TResult? Function()? resume,
    TResult? Function()? stop,
    TResult? Function()? close,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Duration? currentPosition)? start,
    TResult Function()? updateCircle,
    TResult Function()? add15,
    TResult Function()? minus15,
    TResult Function()? pause,
    TResult Function()? resume,
    TResult Function()? stop,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartPlayingEvent value) start,
    required TResult Function(UpdateCircleEvent value) updateCircle,
    required TResult Function(Add15Event value) add15,
    required TResult Function(Minus15Event value) minus15,
    required TResult Function(PausePlayingEvent value) pause,
    required TResult Function(ResumePlayingEvent value) resume,
    required TResult Function(StopPlayingEvent value) stop,
    required TResult Function(ClosePlayingEvent value) close,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartPlayingEvent value)? start,
    TResult? Function(UpdateCircleEvent value)? updateCircle,
    TResult? Function(Add15Event value)? add15,
    TResult? Function(Minus15Event value)? minus15,
    TResult? Function(PausePlayingEvent value)? pause,
    TResult? Function(ResumePlayingEvent value)? resume,
    TResult? Function(StopPlayingEvent value)? stop,
    TResult? Function(ClosePlayingEvent value)? close,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartPlayingEvent value)? start,
    TResult Function(UpdateCircleEvent value)? updateCircle,
    TResult Function(Add15Event value)? add15,
    TResult Function(Minus15Event value)? minus15,
    TResult Function(PausePlayingEvent value)? pause,
    TResult Function(ResumePlayingEvent value)? resume,
    TResult Function(StopPlayingEvent value)? stop,
    TResult Function(ClosePlayingEvent value)? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class ClosePlayingEvent implements ListenRecordEvent {
  const factory ClosePlayingEvent() = _$ClosePlayingEventImpl;
}
