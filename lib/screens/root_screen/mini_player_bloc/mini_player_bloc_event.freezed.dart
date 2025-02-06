// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mini_player_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MiniPlayerBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AudioRecordsModel> audioRecordsList) open,
    required TResult Function() close,
    required TResult Function() pause,
    required TResult Function(Duration position) updateLine,
    required TResult Function() nextTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult? Function()? close,
    TResult? Function()? pause,
    TResult? Function(Duration position)? updateLine,
    TResult? Function()? nextTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult Function()? close,
    TResult Function()? pause,
    TResult Function(Duration position)? updateLine,
    TResult Function()? nextTrack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenMiniPlayerEvent value) open,
    required TResult Function(CloseMiniPlayerEvent value) close,
    required TResult Function(PauseMiniPlayerEvent value) pause,
    required TResult Function(UpdateLineMiniPlayerEvent value) updateLine,
    required TResult Function(NextTrackMiniPlayerEvent value) nextTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenMiniPlayerEvent value)? open,
    TResult? Function(CloseMiniPlayerEvent value)? close,
    TResult? Function(PauseMiniPlayerEvent value)? pause,
    TResult? Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult? Function(NextTrackMiniPlayerEvent value)? nextTrack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenMiniPlayerEvent value)? open,
    TResult Function(CloseMiniPlayerEvent value)? close,
    TResult Function(PauseMiniPlayerEvent value)? pause,
    TResult Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult Function(NextTrackMiniPlayerEvent value)? nextTrack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiniPlayerBlocEventCopyWith<$Res> {
  factory $MiniPlayerBlocEventCopyWith(
          MiniPlayerBlocEvent value, $Res Function(MiniPlayerBlocEvent) then) =
      _$MiniPlayerBlocEventCopyWithImpl<$Res, MiniPlayerBlocEvent>;
}

/// @nodoc
class _$MiniPlayerBlocEventCopyWithImpl<$Res, $Val extends MiniPlayerBlocEvent>
    implements $MiniPlayerBlocEventCopyWith<$Res> {
  _$MiniPlayerBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiniPlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OpenMiniPlayerEventImplCopyWith<$Res> {
  factory _$$OpenMiniPlayerEventImplCopyWith(_$OpenMiniPlayerEventImpl value,
          $Res Function(_$OpenMiniPlayerEventImpl) then) =
      __$$OpenMiniPlayerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AudioRecordsModel> audioRecordsList});
}

/// @nodoc
class __$$OpenMiniPlayerEventImplCopyWithImpl<$Res>
    extends _$MiniPlayerBlocEventCopyWithImpl<$Res, _$OpenMiniPlayerEventImpl>
    implements _$$OpenMiniPlayerEventImplCopyWith<$Res> {
  __$$OpenMiniPlayerEventImplCopyWithImpl(_$OpenMiniPlayerEventImpl _value,
      $Res Function(_$OpenMiniPlayerEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiniPlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioRecordsList = null,
  }) {
    return _then(_$OpenMiniPlayerEventImpl(
      null == audioRecordsList
          ? _value._audioRecordsList
          : audioRecordsList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
    ));
  }
}

/// @nodoc

class _$OpenMiniPlayerEventImpl implements OpenMiniPlayerEvent {
  const _$OpenMiniPlayerEventImpl(
      final List<AudioRecordsModel> audioRecordsList)
      : _audioRecordsList = audioRecordsList;

  final List<AudioRecordsModel> _audioRecordsList;
  @override
  List<AudioRecordsModel> get audioRecordsList {
    if (_audioRecordsList is EqualUnmodifiableListView)
      return _audioRecordsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioRecordsList);
  }

  @override
  String toString() {
    return 'MiniPlayerBlocEvent.open(audioRecordsList: $audioRecordsList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OpenMiniPlayerEventImpl &&
            const DeepCollectionEquality()
                .equals(other._audioRecordsList, _audioRecordsList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_audioRecordsList));

  /// Create a copy of MiniPlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OpenMiniPlayerEventImplCopyWith<_$OpenMiniPlayerEventImpl> get copyWith =>
      __$$OpenMiniPlayerEventImplCopyWithImpl<_$OpenMiniPlayerEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AudioRecordsModel> audioRecordsList) open,
    required TResult Function() close,
    required TResult Function() pause,
    required TResult Function(Duration position) updateLine,
    required TResult Function() nextTrack,
  }) {
    return open(audioRecordsList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult? Function()? close,
    TResult? Function()? pause,
    TResult? Function(Duration position)? updateLine,
    TResult? Function()? nextTrack,
  }) {
    return open?.call(audioRecordsList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult Function()? close,
    TResult Function()? pause,
    TResult Function(Duration position)? updateLine,
    TResult Function()? nextTrack,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(audioRecordsList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenMiniPlayerEvent value) open,
    required TResult Function(CloseMiniPlayerEvent value) close,
    required TResult Function(PauseMiniPlayerEvent value) pause,
    required TResult Function(UpdateLineMiniPlayerEvent value) updateLine,
    required TResult Function(NextTrackMiniPlayerEvent value) nextTrack,
  }) {
    return open(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenMiniPlayerEvent value)? open,
    TResult? Function(CloseMiniPlayerEvent value)? close,
    TResult? Function(PauseMiniPlayerEvent value)? pause,
    TResult? Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult? Function(NextTrackMiniPlayerEvent value)? nextTrack,
  }) {
    return open?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenMiniPlayerEvent value)? open,
    TResult Function(CloseMiniPlayerEvent value)? close,
    TResult Function(PauseMiniPlayerEvent value)? pause,
    TResult Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult Function(NextTrackMiniPlayerEvent value)? nextTrack,
    required TResult orElse(),
  }) {
    if (open != null) {
      return open(this);
    }
    return orElse();
  }
}

abstract class OpenMiniPlayerEvent implements MiniPlayerBlocEvent {
  const factory OpenMiniPlayerEvent(
          final List<AudioRecordsModel> audioRecordsList) =
      _$OpenMiniPlayerEventImpl;

  List<AudioRecordsModel> get audioRecordsList;

  /// Create a copy of MiniPlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OpenMiniPlayerEventImplCopyWith<_$OpenMiniPlayerEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CloseMiniPlayerEventImplCopyWith<$Res> {
  factory _$$CloseMiniPlayerEventImplCopyWith(_$CloseMiniPlayerEventImpl value,
          $Res Function(_$CloseMiniPlayerEventImpl) then) =
      __$$CloseMiniPlayerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseMiniPlayerEventImplCopyWithImpl<$Res>
    extends _$MiniPlayerBlocEventCopyWithImpl<$Res, _$CloseMiniPlayerEventImpl>
    implements _$$CloseMiniPlayerEventImplCopyWith<$Res> {
  __$$CloseMiniPlayerEventImplCopyWithImpl(_$CloseMiniPlayerEventImpl _value,
      $Res Function(_$CloseMiniPlayerEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiniPlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CloseMiniPlayerEventImpl implements CloseMiniPlayerEvent {
  const _$CloseMiniPlayerEventImpl();

  @override
  String toString() {
    return 'MiniPlayerBlocEvent.close()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloseMiniPlayerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AudioRecordsModel> audioRecordsList) open,
    required TResult Function() close,
    required TResult Function() pause,
    required TResult Function(Duration position) updateLine,
    required TResult Function() nextTrack,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult? Function()? close,
    TResult? Function()? pause,
    TResult? Function(Duration position)? updateLine,
    TResult? Function()? nextTrack,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult Function()? close,
    TResult Function()? pause,
    TResult Function(Duration position)? updateLine,
    TResult Function()? nextTrack,
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
    required TResult Function(OpenMiniPlayerEvent value) open,
    required TResult Function(CloseMiniPlayerEvent value) close,
    required TResult Function(PauseMiniPlayerEvent value) pause,
    required TResult Function(UpdateLineMiniPlayerEvent value) updateLine,
    required TResult Function(NextTrackMiniPlayerEvent value) nextTrack,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenMiniPlayerEvent value)? open,
    TResult? Function(CloseMiniPlayerEvent value)? close,
    TResult? Function(PauseMiniPlayerEvent value)? pause,
    TResult? Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult? Function(NextTrackMiniPlayerEvent value)? nextTrack,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenMiniPlayerEvent value)? open,
    TResult Function(CloseMiniPlayerEvent value)? close,
    TResult Function(PauseMiniPlayerEvent value)? pause,
    TResult Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult Function(NextTrackMiniPlayerEvent value)? nextTrack,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class CloseMiniPlayerEvent implements MiniPlayerBlocEvent {
  const factory CloseMiniPlayerEvent() = _$CloseMiniPlayerEventImpl;
}

/// @nodoc
abstract class _$$PauseMiniPlayerEventImplCopyWith<$Res> {
  factory _$$PauseMiniPlayerEventImplCopyWith(_$PauseMiniPlayerEventImpl value,
          $Res Function(_$PauseMiniPlayerEventImpl) then) =
      __$$PauseMiniPlayerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseMiniPlayerEventImplCopyWithImpl<$Res>
    extends _$MiniPlayerBlocEventCopyWithImpl<$Res, _$PauseMiniPlayerEventImpl>
    implements _$$PauseMiniPlayerEventImplCopyWith<$Res> {
  __$$PauseMiniPlayerEventImplCopyWithImpl(_$PauseMiniPlayerEventImpl _value,
      $Res Function(_$PauseMiniPlayerEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiniPlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PauseMiniPlayerEventImpl implements PauseMiniPlayerEvent {
  const _$PauseMiniPlayerEventImpl();

  @override
  String toString() {
    return 'MiniPlayerBlocEvent.pause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PauseMiniPlayerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AudioRecordsModel> audioRecordsList) open,
    required TResult Function() close,
    required TResult Function() pause,
    required TResult Function(Duration position) updateLine,
    required TResult Function() nextTrack,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult? Function()? close,
    TResult? Function()? pause,
    TResult? Function(Duration position)? updateLine,
    TResult? Function()? nextTrack,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult Function()? close,
    TResult Function()? pause,
    TResult Function(Duration position)? updateLine,
    TResult Function()? nextTrack,
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
    required TResult Function(OpenMiniPlayerEvent value) open,
    required TResult Function(CloseMiniPlayerEvent value) close,
    required TResult Function(PauseMiniPlayerEvent value) pause,
    required TResult Function(UpdateLineMiniPlayerEvent value) updateLine,
    required TResult Function(NextTrackMiniPlayerEvent value) nextTrack,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenMiniPlayerEvent value)? open,
    TResult? Function(CloseMiniPlayerEvent value)? close,
    TResult? Function(PauseMiniPlayerEvent value)? pause,
    TResult? Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult? Function(NextTrackMiniPlayerEvent value)? nextTrack,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenMiniPlayerEvent value)? open,
    TResult Function(CloseMiniPlayerEvent value)? close,
    TResult Function(PauseMiniPlayerEvent value)? pause,
    TResult Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult Function(NextTrackMiniPlayerEvent value)? nextTrack,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class PauseMiniPlayerEvent implements MiniPlayerBlocEvent {
  const factory PauseMiniPlayerEvent() = _$PauseMiniPlayerEventImpl;
}

/// @nodoc
abstract class _$$UpdateLineMiniPlayerEventImplCopyWith<$Res> {
  factory _$$UpdateLineMiniPlayerEventImplCopyWith(
          _$UpdateLineMiniPlayerEventImpl value,
          $Res Function(_$UpdateLineMiniPlayerEventImpl) then) =
      __$$UpdateLineMiniPlayerEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration position});
}

/// @nodoc
class __$$UpdateLineMiniPlayerEventImplCopyWithImpl<$Res>
    extends _$MiniPlayerBlocEventCopyWithImpl<$Res,
        _$UpdateLineMiniPlayerEventImpl>
    implements _$$UpdateLineMiniPlayerEventImplCopyWith<$Res> {
  __$$UpdateLineMiniPlayerEventImplCopyWithImpl(
      _$UpdateLineMiniPlayerEventImpl _value,
      $Res Function(_$UpdateLineMiniPlayerEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiniPlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? position = null,
  }) {
    return _then(_$UpdateLineMiniPlayerEventImpl(
      null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$UpdateLineMiniPlayerEventImpl implements UpdateLineMiniPlayerEvent {
  const _$UpdateLineMiniPlayerEventImpl(this.position);

  @override
  final Duration position;

  @override
  String toString() {
    return 'MiniPlayerBlocEvent.updateLine(position: $position)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateLineMiniPlayerEventImpl &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @override
  int get hashCode => Object.hash(runtimeType, position);

  /// Create a copy of MiniPlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateLineMiniPlayerEventImplCopyWith<_$UpdateLineMiniPlayerEventImpl>
      get copyWith => __$$UpdateLineMiniPlayerEventImplCopyWithImpl<
          _$UpdateLineMiniPlayerEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AudioRecordsModel> audioRecordsList) open,
    required TResult Function() close,
    required TResult Function() pause,
    required TResult Function(Duration position) updateLine,
    required TResult Function() nextTrack,
  }) {
    return updateLine(position);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult? Function()? close,
    TResult? Function()? pause,
    TResult? Function(Duration position)? updateLine,
    TResult? Function()? nextTrack,
  }) {
    return updateLine?.call(position);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult Function()? close,
    TResult Function()? pause,
    TResult Function(Duration position)? updateLine,
    TResult Function()? nextTrack,
    required TResult orElse(),
  }) {
    if (updateLine != null) {
      return updateLine(position);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenMiniPlayerEvent value) open,
    required TResult Function(CloseMiniPlayerEvent value) close,
    required TResult Function(PauseMiniPlayerEvent value) pause,
    required TResult Function(UpdateLineMiniPlayerEvent value) updateLine,
    required TResult Function(NextTrackMiniPlayerEvent value) nextTrack,
  }) {
    return updateLine(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenMiniPlayerEvent value)? open,
    TResult? Function(CloseMiniPlayerEvent value)? close,
    TResult? Function(PauseMiniPlayerEvent value)? pause,
    TResult? Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult? Function(NextTrackMiniPlayerEvent value)? nextTrack,
  }) {
    return updateLine?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenMiniPlayerEvent value)? open,
    TResult Function(CloseMiniPlayerEvent value)? close,
    TResult Function(PauseMiniPlayerEvent value)? pause,
    TResult Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult Function(NextTrackMiniPlayerEvent value)? nextTrack,
    required TResult orElse(),
  }) {
    if (updateLine != null) {
      return updateLine(this);
    }
    return orElse();
  }
}

abstract class UpdateLineMiniPlayerEvent implements MiniPlayerBlocEvent {
  const factory UpdateLineMiniPlayerEvent(final Duration position) =
      _$UpdateLineMiniPlayerEventImpl;

  Duration get position;

  /// Create a copy of MiniPlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateLineMiniPlayerEventImplCopyWith<_$UpdateLineMiniPlayerEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NextTrackMiniPlayerEventImplCopyWith<$Res> {
  factory _$$NextTrackMiniPlayerEventImplCopyWith(
          _$NextTrackMiniPlayerEventImpl value,
          $Res Function(_$NextTrackMiniPlayerEventImpl) then) =
      __$$NextTrackMiniPlayerEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NextTrackMiniPlayerEventImplCopyWithImpl<$Res>
    extends _$MiniPlayerBlocEventCopyWithImpl<$Res,
        _$NextTrackMiniPlayerEventImpl>
    implements _$$NextTrackMiniPlayerEventImplCopyWith<$Res> {
  __$$NextTrackMiniPlayerEventImplCopyWithImpl(
      _$NextTrackMiniPlayerEventImpl _value,
      $Res Function(_$NextTrackMiniPlayerEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiniPlayerBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$NextTrackMiniPlayerEventImpl implements NextTrackMiniPlayerEvent {
  const _$NextTrackMiniPlayerEventImpl();

  @override
  String toString() {
    return 'MiniPlayerBlocEvent.nextTrack()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NextTrackMiniPlayerEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<AudioRecordsModel> audioRecordsList) open,
    required TResult Function() close,
    required TResult Function() pause,
    required TResult Function(Duration position) updateLine,
    required TResult Function() nextTrack,
  }) {
    return nextTrack();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult? Function()? close,
    TResult? Function()? pause,
    TResult? Function(Duration position)? updateLine,
    TResult? Function()? nextTrack,
  }) {
    return nextTrack?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<AudioRecordsModel> audioRecordsList)? open,
    TResult Function()? close,
    TResult Function()? pause,
    TResult Function(Duration position)? updateLine,
    TResult Function()? nextTrack,
    required TResult orElse(),
  }) {
    if (nextTrack != null) {
      return nextTrack();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OpenMiniPlayerEvent value) open,
    required TResult Function(CloseMiniPlayerEvent value) close,
    required TResult Function(PauseMiniPlayerEvent value) pause,
    required TResult Function(UpdateLineMiniPlayerEvent value) updateLine,
    required TResult Function(NextTrackMiniPlayerEvent value) nextTrack,
  }) {
    return nextTrack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OpenMiniPlayerEvent value)? open,
    TResult? Function(CloseMiniPlayerEvent value)? close,
    TResult? Function(PauseMiniPlayerEvent value)? pause,
    TResult? Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult? Function(NextTrackMiniPlayerEvent value)? nextTrack,
  }) {
    return nextTrack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OpenMiniPlayerEvent value)? open,
    TResult Function(CloseMiniPlayerEvent value)? close,
    TResult Function(PauseMiniPlayerEvent value)? pause,
    TResult Function(UpdateLineMiniPlayerEvent value)? updateLine,
    TResult Function(NextTrackMiniPlayerEvent value)? nextTrack,
    required TResult orElse(),
  }) {
    if (nextTrack != null) {
      return nextTrack(this);
    }
    return orElse();
  }
}

abstract class NextTrackMiniPlayerEvent implements MiniPlayerBlocEvent {
  const factory NextTrackMiniPlayerEvent() = _$NextTrackMiniPlayerEventImpl;
}
