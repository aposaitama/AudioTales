// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mini_player_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MiniPlayerBlocState {
  List<AudioRecordsModel> get audioRecordsList =>
      throw _privateConstructorUsedError;
  MiniPlayerStatus get status => throw _privateConstructorUsedError;
  Duration get position => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  int get currentPlayingIndex => throw _privateConstructorUsedError;
  bool get isPlayingAll => throw _privateConstructorUsedError;

  /// Create a copy of MiniPlayerBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MiniPlayerBlocStateCopyWith<MiniPlayerBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MiniPlayerBlocStateCopyWith<$Res> {
  factory $MiniPlayerBlocStateCopyWith(
          MiniPlayerBlocState value, $Res Function(MiniPlayerBlocState) then) =
      _$MiniPlayerBlocStateCopyWithImpl<$Res, MiniPlayerBlocState>;
  @useResult
  $Res call(
      {List<AudioRecordsModel> audioRecordsList,
      MiniPlayerStatus status,
      Duration position,
      Duration duration,
      int currentPlayingIndex,
      bool isPlayingAll});
}

/// @nodoc
class _$MiniPlayerBlocStateCopyWithImpl<$Res, $Val extends MiniPlayerBlocState>
    implements $MiniPlayerBlocStateCopyWith<$Res> {
  _$MiniPlayerBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MiniPlayerBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioRecordsList = null,
    Object? status = null,
    Object? position = null,
    Object? duration = null,
    Object? currentPlayingIndex = null,
    Object? isPlayingAll = null,
  }) {
    return _then(_value.copyWith(
      audioRecordsList: null == audioRecordsList
          ? _value.audioRecordsList
          : audioRecordsList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MiniPlayerStatus,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      currentPlayingIndex: null == currentPlayingIndex
          ? _value.currentPlayingIndex
          : currentPlayingIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isPlayingAll: null == isPlayingAll
          ? _value.isPlayingAll
          : isPlayingAll // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MiniPlayerBlocStateImplCopyWith<$Res>
    implements $MiniPlayerBlocStateCopyWith<$Res> {
  factory _$$MiniPlayerBlocStateImplCopyWith(_$MiniPlayerBlocStateImpl value,
          $Res Function(_$MiniPlayerBlocStateImpl) then) =
      __$$MiniPlayerBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AudioRecordsModel> audioRecordsList,
      MiniPlayerStatus status,
      Duration position,
      Duration duration,
      int currentPlayingIndex,
      bool isPlayingAll});
}

/// @nodoc
class __$$MiniPlayerBlocStateImplCopyWithImpl<$Res>
    extends _$MiniPlayerBlocStateCopyWithImpl<$Res, _$MiniPlayerBlocStateImpl>
    implements _$$MiniPlayerBlocStateImplCopyWith<$Res> {
  __$$MiniPlayerBlocStateImplCopyWithImpl(_$MiniPlayerBlocStateImpl _value,
      $Res Function(_$MiniPlayerBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MiniPlayerBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioRecordsList = null,
    Object? status = null,
    Object? position = null,
    Object? duration = null,
    Object? currentPlayingIndex = null,
    Object? isPlayingAll = null,
  }) {
    return _then(_$MiniPlayerBlocStateImpl(
      audioRecordsList: null == audioRecordsList
          ? _value._audioRecordsList
          : audioRecordsList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as MiniPlayerStatus,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      currentPlayingIndex: null == currentPlayingIndex
          ? _value.currentPlayingIndex
          : currentPlayingIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isPlayingAll: null == isPlayingAll
          ? _value.isPlayingAll
          : isPlayingAll // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$MiniPlayerBlocStateImpl implements _MiniPlayerBlocState {
  const _$MiniPlayerBlocStateImpl(
      {final List<AudioRecordsModel> audioRecordsList = const [],
      this.status = MiniPlayerStatus.closed,
      this.position = Duration.zero,
      this.duration = Duration.zero,
      this.currentPlayingIndex = 0,
      this.isPlayingAll = false})
      : _audioRecordsList = audioRecordsList;

  final List<AudioRecordsModel> _audioRecordsList;
  @override
  @JsonKey()
  List<AudioRecordsModel> get audioRecordsList {
    if (_audioRecordsList is EqualUnmodifiableListView)
      return _audioRecordsList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioRecordsList);
  }

  @override
  @JsonKey()
  final MiniPlayerStatus status;
  @override
  @JsonKey()
  final Duration position;
  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final int currentPlayingIndex;
  @override
  @JsonKey()
  final bool isPlayingAll;

  @override
  String toString() {
    return 'MiniPlayerBlocState(audioRecordsList: $audioRecordsList, status: $status, position: $position, duration: $duration, currentPlayingIndex: $currentPlayingIndex, isPlayingAll: $isPlayingAll)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MiniPlayerBlocStateImpl &&
            const DeepCollectionEquality()
                .equals(other._audioRecordsList, _audioRecordsList) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.currentPlayingIndex, currentPlayingIndex) ||
                other.currentPlayingIndex == currentPlayingIndex) &&
            (identical(other.isPlayingAll, isPlayingAll) ||
                other.isPlayingAll == isPlayingAll));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_audioRecordsList),
      status,
      position,
      duration,
      currentPlayingIndex,
      isPlayingAll);

  /// Create a copy of MiniPlayerBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MiniPlayerBlocStateImplCopyWith<_$MiniPlayerBlocStateImpl> get copyWith =>
      __$$MiniPlayerBlocStateImplCopyWithImpl<_$MiniPlayerBlocStateImpl>(
          this, _$identity);
}

abstract class _MiniPlayerBlocState implements MiniPlayerBlocState {
  const factory _MiniPlayerBlocState(
      {final List<AudioRecordsModel> audioRecordsList,
      final MiniPlayerStatus status,
      final Duration position,
      final Duration duration,
      final int currentPlayingIndex,
      final bool isPlayingAll}) = _$MiniPlayerBlocStateImpl;

  @override
  List<AudioRecordsModel> get audioRecordsList;
  @override
  MiniPlayerStatus get status;
  @override
  Duration get position;
  @override
  Duration get duration;
  @override
  int get currentPlayingIndex;
  @override
  bool get isPlayingAll;

  /// Create a copy of MiniPlayerBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MiniPlayerBlocStateImplCopyWith<_$MiniPlayerBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
