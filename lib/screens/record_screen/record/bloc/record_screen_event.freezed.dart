// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'record_screen_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecordEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecording,
    required TResult Function(double decibels, Duration duration) updateWave,
    required TResult Function() stopRecording,
    required TResult Function() pauseRecording,
    required TResult Function() resumeRecording,
    required TResult Function() checkDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function(double decibels, Duration duration)? updateWave,
    TResult? Function()? stopRecording,
    TResult? Function()? pauseRecording,
    TResult? Function()? resumeRecording,
    TResult? Function()? checkDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function(double decibels, Duration duration)? updateWave,
    TResult Function()? stopRecording,
    TResult Function()? pauseRecording,
    TResult Function()? resumeRecording,
    TResult Function()? checkDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartRecordingEvent value) startRecording,
    required TResult Function(UpdateWaveEvent value) updateWave,
    required TResult Function(StopRecordingEvent value) stopRecording,
    required TResult Function(PauseRecordingEvent value) pauseRecording,
    required TResult Function(ResumeRecordingEvent value) resumeRecording,
    required TResult Function(CheckDurationRecordingEvent value) checkDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartRecordingEvent value)? startRecording,
    TResult? Function(UpdateWaveEvent value)? updateWave,
    TResult? Function(StopRecordingEvent value)? stopRecording,
    TResult? Function(PauseRecordingEvent value)? pauseRecording,
    TResult? Function(ResumeRecordingEvent value)? resumeRecording,
    TResult? Function(CheckDurationRecordingEvent value)? checkDuration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartRecordingEvent value)? startRecording,
    TResult Function(UpdateWaveEvent value)? updateWave,
    TResult Function(StopRecordingEvent value)? stopRecording,
    TResult Function(PauseRecordingEvent value)? pauseRecording,
    TResult Function(ResumeRecordingEvent value)? resumeRecording,
    TResult Function(CheckDurationRecordingEvent value)? checkDuration,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecordEventCopyWith<$Res> {
  factory $RecordEventCopyWith(
          RecordEvent value, $Res Function(RecordEvent) then) =
      _$RecordEventCopyWithImpl<$Res, RecordEvent>;
}

/// @nodoc
class _$RecordEventCopyWithImpl<$Res, $Val extends RecordEvent>
    implements $RecordEventCopyWith<$Res> {
  _$RecordEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartRecordingEventImplCopyWith<$Res> {
  factory _$$StartRecordingEventImplCopyWith(_$StartRecordingEventImpl value,
          $Res Function(_$StartRecordingEventImpl) then) =
      __$$StartRecordingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartRecordingEventImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$StartRecordingEventImpl>
    implements _$$StartRecordingEventImplCopyWith<$Res> {
  __$$StartRecordingEventImplCopyWithImpl(_$StartRecordingEventImpl _value,
      $Res Function(_$StartRecordingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartRecordingEventImpl implements StartRecordingEvent {
  const _$StartRecordingEventImpl();

  @override
  String toString() {
    return 'RecordEvent.startRecording()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartRecordingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecording,
    required TResult Function(double decibels, Duration duration) updateWave,
    required TResult Function() stopRecording,
    required TResult Function() pauseRecording,
    required TResult Function() resumeRecording,
    required TResult Function() checkDuration,
  }) {
    return startRecording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function(double decibels, Duration duration)? updateWave,
    TResult? Function()? stopRecording,
    TResult? Function()? pauseRecording,
    TResult? Function()? resumeRecording,
    TResult? Function()? checkDuration,
  }) {
    return startRecording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function(double decibels, Duration duration)? updateWave,
    TResult Function()? stopRecording,
    TResult Function()? pauseRecording,
    TResult Function()? resumeRecording,
    TResult Function()? checkDuration,
    required TResult orElse(),
  }) {
    if (startRecording != null) {
      return startRecording();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartRecordingEvent value) startRecording,
    required TResult Function(UpdateWaveEvent value) updateWave,
    required TResult Function(StopRecordingEvent value) stopRecording,
    required TResult Function(PauseRecordingEvent value) pauseRecording,
    required TResult Function(ResumeRecordingEvent value) resumeRecording,
    required TResult Function(CheckDurationRecordingEvent value) checkDuration,
  }) {
    return startRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartRecordingEvent value)? startRecording,
    TResult? Function(UpdateWaveEvent value)? updateWave,
    TResult? Function(StopRecordingEvent value)? stopRecording,
    TResult? Function(PauseRecordingEvent value)? pauseRecording,
    TResult? Function(ResumeRecordingEvent value)? resumeRecording,
    TResult? Function(CheckDurationRecordingEvent value)? checkDuration,
  }) {
    return startRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartRecordingEvent value)? startRecording,
    TResult Function(UpdateWaveEvent value)? updateWave,
    TResult Function(StopRecordingEvent value)? stopRecording,
    TResult Function(PauseRecordingEvent value)? pauseRecording,
    TResult Function(ResumeRecordingEvent value)? resumeRecording,
    TResult Function(CheckDurationRecordingEvent value)? checkDuration,
    required TResult orElse(),
  }) {
    if (startRecording != null) {
      return startRecording(this);
    }
    return orElse();
  }
}

abstract class StartRecordingEvent implements RecordEvent {
  const factory StartRecordingEvent() = _$StartRecordingEventImpl;
}

/// @nodoc
abstract class _$$UpdateWaveEventImplCopyWith<$Res> {
  factory _$$UpdateWaveEventImplCopyWith(_$UpdateWaveEventImpl value,
          $Res Function(_$UpdateWaveEventImpl) then) =
      __$$UpdateWaveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double decibels, Duration duration});
}

/// @nodoc
class __$$UpdateWaveEventImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$UpdateWaveEventImpl>
    implements _$$UpdateWaveEventImplCopyWith<$Res> {
  __$$UpdateWaveEventImplCopyWithImpl(
      _$UpdateWaveEventImpl _value, $Res Function(_$UpdateWaveEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? decibels = null,
    Object? duration = null,
  }) {
    return _then(_$UpdateWaveEventImpl(
      null == decibels
          ? _value.decibels
          : decibels // ignore: cast_nullable_to_non_nullable
              as double,
      null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$UpdateWaveEventImpl implements UpdateWaveEvent {
  const _$UpdateWaveEventImpl(this.decibels, this.duration);

  @override
  final double decibels;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'RecordEvent.updateWave(decibels: $decibels, duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWaveEventImpl &&
            (identical(other.decibels, decibels) ||
                other.decibels == decibels) &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, decibels, duration);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWaveEventImplCopyWith<_$UpdateWaveEventImpl> get copyWith =>
      __$$UpdateWaveEventImplCopyWithImpl<_$UpdateWaveEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecording,
    required TResult Function(double decibels, Duration duration) updateWave,
    required TResult Function() stopRecording,
    required TResult Function() pauseRecording,
    required TResult Function() resumeRecording,
    required TResult Function() checkDuration,
  }) {
    return updateWave(decibels, duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function(double decibels, Duration duration)? updateWave,
    TResult? Function()? stopRecording,
    TResult? Function()? pauseRecording,
    TResult? Function()? resumeRecording,
    TResult? Function()? checkDuration,
  }) {
    return updateWave?.call(decibels, duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function(double decibels, Duration duration)? updateWave,
    TResult Function()? stopRecording,
    TResult Function()? pauseRecording,
    TResult Function()? resumeRecording,
    TResult Function()? checkDuration,
    required TResult orElse(),
  }) {
    if (updateWave != null) {
      return updateWave(decibels, duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartRecordingEvent value) startRecording,
    required TResult Function(UpdateWaveEvent value) updateWave,
    required TResult Function(StopRecordingEvent value) stopRecording,
    required TResult Function(PauseRecordingEvent value) pauseRecording,
    required TResult Function(ResumeRecordingEvent value) resumeRecording,
    required TResult Function(CheckDurationRecordingEvent value) checkDuration,
  }) {
    return updateWave(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartRecordingEvent value)? startRecording,
    TResult? Function(UpdateWaveEvent value)? updateWave,
    TResult? Function(StopRecordingEvent value)? stopRecording,
    TResult? Function(PauseRecordingEvent value)? pauseRecording,
    TResult? Function(ResumeRecordingEvent value)? resumeRecording,
    TResult? Function(CheckDurationRecordingEvent value)? checkDuration,
  }) {
    return updateWave?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartRecordingEvent value)? startRecording,
    TResult Function(UpdateWaveEvent value)? updateWave,
    TResult Function(StopRecordingEvent value)? stopRecording,
    TResult Function(PauseRecordingEvent value)? pauseRecording,
    TResult Function(ResumeRecordingEvent value)? resumeRecording,
    TResult Function(CheckDurationRecordingEvent value)? checkDuration,
    required TResult orElse(),
  }) {
    if (updateWave != null) {
      return updateWave(this);
    }
    return orElse();
  }
}

abstract class UpdateWaveEvent implements RecordEvent {
  const factory UpdateWaveEvent(
      final double decibels, final Duration duration) = _$UpdateWaveEventImpl;

  double get decibels;
  Duration get duration;

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWaveEventImplCopyWith<_$UpdateWaveEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$StopRecordingEventImplCopyWith<$Res> {
  factory _$$StopRecordingEventImplCopyWith(_$StopRecordingEventImpl value,
          $Res Function(_$StopRecordingEventImpl) then) =
      __$$StopRecordingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StopRecordingEventImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$StopRecordingEventImpl>
    implements _$$StopRecordingEventImplCopyWith<$Res> {
  __$$StopRecordingEventImplCopyWithImpl(_$StopRecordingEventImpl _value,
      $Res Function(_$StopRecordingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StopRecordingEventImpl implements StopRecordingEvent {
  const _$StopRecordingEventImpl();

  @override
  String toString() {
    return 'RecordEvent.stopRecording()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StopRecordingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecording,
    required TResult Function(double decibels, Duration duration) updateWave,
    required TResult Function() stopRecording,
    required TResult Function() pauseRecording,
    required TResult Function() resumeRecording,
    required TResult Function() checkDuration,
  }) {
    return stopRecording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function(double decibels, Duration duration)? updateWave,
    TResult? Function()? stopRecording,
    TResult? Function()? pauseRecording,
    TResult? Function()? resumeRecording,
    TResult? Function()? checkDuration,
  }) {
    return stopRecording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function(double decibels, Duration duration)? updateWave,
    TResult Function()? stopRecording,
    TResult Function()? pauseRecording,
    TResult Function()? resumeRecording,
    TResult Function()? checkDuration,
    required TResult orElse(),
  }) {
    if (stopRecording != null) {
      return stopRecording();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartRecordingEvent value) startRecording,
    required TResult Function(UpdateWaveEvent value) updateWave,
    required TResult Function(StopRecordingEvent value) stopRecording,
    required TResult Function(PauseRecordingEvent value) pauseRecording,
    required TResult Function(ResumeRecordingEvent value) resumeRecording,
    required TResult Function(CheckDurationRecordingEvent value) checkDuration,
  }) {
    return stopRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartRecordingEvent value)? startRecording,
    TResult? Function(UpdateWaveEvent value)? updateWave,
    TResult? Function(StopRecordingEvent value)? stopRecording,
    TResult? Function(PauseRecordingEvent value)? pauseRecording,
    TResult? Function(ResumeRecordingEvent value)? resumeRecording,
    TResult? Function(CheckDurationRecordingEvent value)? checkDuration,
  }) {
    return stopRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartRecordingEvent value)? startRecording,
    TResult Function(UpdateWaveEvent value)? updateWave,
    TResult Function(StopRecordingEvent value)? stopRecording,
    TResult Function(PauseRecordingEvent value)? pauseRecording,
    TResult Function(ResumeRecordingEvent value)? resumeRecording,
    TResult Function(CheckDurationRecordingEvent value)? checkDuration,
    required TResult orElse(),
  }) {
    if (stopRecording != null) {
      return stopRecording(this);
    }
    return orElse();
  }
}

abstract class StopRecordingEvent implements RecordEvent {
  const factory StopRecordingEvent() = _$StopRecordingEventImpl;
}

/// @nodoc
abstract class _$$PauseRecordingEventImplCopyWith<$Res> {
  factory _$$PauseRecordingEventImplCopyWith(_$PauseRecordingEventImpl value,
          $Res Function(_$PauseRecordingEventImpl) then) =
      __$$PauseRecordingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseRecordingEventImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$PauseRecordingEventImpl>
    implements _$$PauseRecordingEventImplCopyWith<$Res> {
  __$$PauseRecordingEventImplCopyWithImpl(_$PauseRecordingEventImpl _value,
      $Res Function(_$PauseRecordingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PauseRecordingEventImpl implements PauseRecordingEvent {
  const _$PauseRecordingEventImpl();

  @override
  String toString() {
    return 'RecordEvent.pauseRecording()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PauseRecordingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecording,
    required TResult Function(double decibels, Duration duration) updateWave,
    required TResult Function() stopRecording,
    required TResult Function() pauseRecording,
    required TResult Function() resumeRecording,
    required TResult Function() checkDuration,
  }) {
    return pauseRecording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function(double decibels, Duration duration)? updateWave,
    TResult? Function()? stopRecording,
    TResult? Function()? pauseRecording,
    TResult? Function()? resumeRecording,
    TResult? Function()? checkDuration,
  }) {
    return pauseRecording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function(double decibels, Duration duration)? updateWave,
    TResult Function()? stopRecording,
    TResult Function()? pauseRecording,
    TResult Function()? resumeRecording,
    TResult Function()? checkDuration,
    required TResult orElse(),
  }) {
    if (pauseRecording != null) {
      return pauseRecording();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartRecordingEvent value) startRecording,
    required TResult Function(UpdateWaveEvent value) updateWave,
    required TResult Function(StopRecordingEvent value) stopRecording,
    required TResult Function(PauseRecordingEvent value) pauseRecording,
    required TResult Function(ResumeRecordingEvent value) resumeRecording,
    required TResult Function(CheckDurationRecordingEvent value) checkDuration,
  }) {
    return pauseRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartRecordingEvent value)? startRecording,
    TResult? Function(UpdateWaveEvent value)? updateWave,
    TResult? Function(StopRecordingEvent value)? stopRecording,
    TResult? Function(PauseRecordingEvent value)? pauseRecording,
    TResult? Function(ResumeRecordingEvent value)? resumeRecording,
    TResult? Function(CheckDurationRecordingEvent value)? checkDuration,
  }) {
    return pauseRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartRecordingEvent value)? startRecording,
    TResult Function(UpdateWaveEvent value)? updateWave,
    TResult Function(StopRecordingEvent value)? stopRecording,
    TResult Function(PauseRecordingEvent value)? pauseRecording,
    TResult Function(ResumeRecordingEvent value)? resumeRecording,
    TResult Function(CheckDurationRecordingEvent value)? checkDuration,
    required TResult orElse(),
  }) {
    if (pauseRecording != null) {
      return pauseRecording(this);
    }
    return orElse();
  }
}

abstract class PauseRecordingEvent implements RecordEvent {
  const factory PauseRecordingEvent() = _$PauseRecordingEventImpl;
}

/// @nodoc
abstract class _$$ResumeRecordingEventImplCopyWith<$Res> {
  factory _$$ResumeRecordingEventImplCopyWith(_$ResumeRecordingEventImpl value,
          $Res Function(_$ResumeRecordingEventImpl) then) =
      __$$ResumeRecordingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ResumeRecordingEventImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$ResumeRecordingEventImpl>
    implements _$$ResumeRecordingEventImplCopyWith<$Res> {
  __$$ResumeRecordingEventImplCopyWithImpl(_$ResumeRecordingEventImpl _value,
      $Res Function(_$ResumeRecordingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ResumeRecordingEventImpl implements ResumeRecordingEvent {
  const _$ResumeRecordingEventImpl();

  @override
  String toString() {
    return 'RecordEvent.resumeRecording()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResumeRecordingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecording,
    required TResult Function(double decibels, Duration duration) updateWave,
    required TResult Function() stopRecording,
    required TResult Function() pauseRecording,
    required TResult Function() resumeRecording,
    required TResult Function() checkDuration,
  }) {
    return resumeRecording();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function(double decibels, Duration duration)? updateWave,
    TResult? Function()? stopRecording,
    TResult? Function()? pauseRecording,
    TResult? Function()? resumeRecording,
    TResult? Function()? checkDuration,
  }) {
    return resumeRecording?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function(double decibels, Duration duration)? updateWave,
    TResult Function()? stopRecording,
    TResult Function()? pauseRecording,
    TResult Function()? resumeRecording,
    TResult Function()? checkDuration,
    required TResult orElse(),
  }) {
    if (resumeRecording != null) {
      return resumeRecording();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartRecordingEvent value) startRecording,
    required TResult Function(UpdateWaveEvent value) updateWave,
    required TResult Function(StopRecordingEvent value) stopRecording,
    required TResult Function(PauseRecordingEvent value) pauseRecording,
    required TResult Function(ResumeRecordingEvent value) resumeRecording,
    required TResult Function(CheckDurationRecordingEvent value) checkDuration,
  }) {
    return resumeRecording(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartRecordingEvent value)? startRecording,
    TResult? Function(UpdateWaveEvent value)? updateWave,
    TResult? Function(StopRecordingEvent value)? stopRecording,
    TResult? Function(PauseRecordingEvent value)? pauseRecording,
    TResult? Function(ResumeRecordingEvent value)? resumeRecording,
    TResult? Function(CheckDurationRecordingEvent value)? checkDuration,
  }) {
    return resumeRecording?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartRecordingEvent value)? startRecording,
    TResult Function(UpdateWaveEvent value)? updateWave,
    TResult Function(StopRecordingEvent value)? stopRecording,
    TResult Function(PauseRecordingEvent value)? pauseRecording,
    TResult Function(ResumeRecordingEvent value)? resumeRecording,
    TResult Function(CheckDurationRecordingEvent value)? checkDuration,
    required TResult orElse(),
  }) {
    if (resumeRecording != null) {
      return resumeRecording(this);
    }
    return orElse();
  }
}

abstract class ResumeRecordingEvent implements RecordEvent {
  const factory ResumeRecordingEvent() = _$ResumeRecordingEventImpl;
}

/// @nodoc
abstract class _$$CheckDurationRecordingEventImplCopyWith<$Res> {
  factory _$$CheckDurationRecordingEventImplCopyWith(
          _$CheckDurationRecordingEventImpl value,
          $Res Function(_$CheckDurationRecordingEventImpl) then) =
      __$$CheckDurationRecordingEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckDurationRecordingEventImplCopyWithImpl<$Res>
    extends _$RecordEventCopyWithImpl<$Res, _$CheckDurationRecordingEventImpl>
    implements _$$CheckDurationRecordingEventImplCopyWith<$Res> {
  __$$CheckDurationRecordingEventImplCopyWithImpl(
      _$CheckDurationRecordingEventImpl _value,
      $Res Function(_$CheckDurationRecordingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecordEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CheckDurationRecordingEventImpl implements CheckDurationRecordingEvent {
  const _$CheckDurationRecordingEventImpl();

  @override
  String toString() {
    return 'RecordEvent.checkDuration()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckDurationRecordingEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() startRecording,
    required TResult Function(double decibels, Duration duration) updateWave,
    required TResult Function() stopRecording,
    required TResult Function() pauseRecording,
    required TResult Function() resumeRecording,
    required TResult Function() checkDuration,
  }) {
    return checkDuration();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? startRecording,
    TResult? Function(double decibels, Duration duration)? updateWave,
    TResult? Function()? stopRecording,
    TResult? Function()? pauseRecording,
    TResult? Function()? resumeRecording,
    TResult? Function()? checkDuration,
  }) {
    return checkDuration?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? startRecording,
    TResult Function(double decibels, Duration duration)? updateWave,
    TResult Function()? stopRecording,
    TResult Function()? pauseRecording,
    TResult Function()? resumeRecording,
    TResult Function()? checkDuration,
    required TResult orElse(),
  }) {
    if (checkDuration != null) {
      return checkDuration();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(StartRecordingEvent value) startRecording,
    required TResult Function(UpdateWaveEvent value) updateWave,
    required TResult Function(StopRecordingEvent value) stopRecording,
    required TResult Function(PauseRecordingEvent value) pauseRecording,
    required TResult Function(ResumeRecordingEvent value) resumeRecording,
    required TResult Function(CheckDurationRecordingEvent value) checkDuration,
  }) {
    return checkDuration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(StartRecordingEvent value)? startRecording,
    TResult? Function(UpdateWaveEvent value)? updateWave,
    TResult? Function(StopRecordingEvent value)? stopRecording,
    TResult? Function(PauseRecordingEvent value)? pauseRecording,
    TResult? Function(ResumeRecordingEvent value)? resumeRecording,
    TResult? Function(CheckDurationRecordingEvent value)? checkDuration,
  }) {
    return checkDuration?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(StartRecordingEvent value)? startRecording,
    TResult Function(UpdateWaveEvent value)? updateWave,
    TResult Function(StopRecordingEvent value)? stopRecording,
    TResult Function(PauseRecordingEvent value)? pauseRecording,
    TResult Function(ResumeRecordingEvent value)? resumeRecording,
    TResult Function(CheckDurationRecordingEvent value)? checkDuration,
    required TResult orElse(),
  }) {
    if (checkDuration != null) {
      return checkDuration(this);
    }
    return orElse();
  }
}

abstract class CheckDurationRecordingEvent implements RecordEvent {
  const factory CheckDurationRecordingEvent() =
      _$CheckDurationRecordingEventImpl;
}
