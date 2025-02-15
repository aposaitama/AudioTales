// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'audio_records_screen_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AudioRecordsScreenState {
  List<AudioRecordsModel> get audioList => throw _privateConstructorUsedError;
  AudioRecordsScreenStatus get status => throw _privateConstructorUsedError;
  AudioPopupStatus get popupStatus => throw _privateConstructorUsedError;
  String? get editingAudioId => throw _privateConstructorUsedError;

  /// Create a copy of AudioRecordsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AudioRecordsScreenStateCopyWith<AudioRecordsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AudioRecordsScreenStateCopyWith<$Res> {
  factory $AudioRecordsScreenStateCopyWith(AudioRecordsScreenState value,
          $Res Function(AudioRecordsScreenState) then) =
      _$AudioRecordsScreenStateCopyWithImpl<$Res, AudioRecordsScreenState>;
  @useResult
  $Res call(
      {List<AudioRecordsModel> audioList,
      AudioRecordsScreenStatus status,
      AudioPopupStatus popupStatus,
      String? editingAudioId});
}

/// @nodoc
class _$AudioRecordsScreenStateCopyWithImpl<$Res,
        $Val extends AudioRecordsScreenState>
    implements $AudioRecordsScreenStateCopyWith<$Res> {
  _$AudioRecordsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AudioRecordsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioList = null,
    Object? status = null,
    Object? popupStatus = null,
    Object? editingAudioId = freezed,
  }) {
    return _then(_value.copyWith(
      audioList: null == audioList
          ? _value.audioList
          : audioList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AudioRecordsScreenStatus,
      popupStatus: null == popupStatus
          ? _value.popupStatus
          : popupStatus // ignore: cast_nullable_to_non_nullable
              as AudioPopupStatus,
      editingAudioId: freezed == editingAudioId
          ? _value.editingAudioId
          : editingAudioId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AudioRecordsScreenStateImplCopyWith<$Res>
    implements $AudioRecordsScreenStateCopyWith<$Res> {
  factory _$$AudioRecordsScreenStateImplCopyWith(
          _$AudioRecordsScreenStateImpl value,
          $Res Function(_$AudioRecordsScreenStateImpl) then) =
      __$$AudioRecordsScreenStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AudioRecordsModel> audioList,
      AudioRecordsScreenStatus status,
      AudioPopupStatus popupStatus,
      String? editingAudioId});
}

/// @nodoc
class __$$AudioRecordsScreenStateImplCopyWithImpl<$Res>
    extends _$AudioRecordsScreenStateCopyWithImpl<$Res,
        _$AudioRecordsScreenStateImpl>
    implements _$$AudioRecordsScreenStateImplCopyWith<$Res> {
  __$$AudioRecordsScreenStateImplCopyWithImpl(
      _$AudioRecordsScreenStateImpl _value,
      $Res Function(_$AudioRecordsScreenStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AudioRecordsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioList = null,
    Object? status = null,
    Object? popupStatus = null,
    Object? editingAudioId = freezed,
  }) {
    return _then(_$AudioRecordsScreenStateImpl(
      audioList: null == audioList
          ? _value._audioList
          : audioList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as AudioRecordsScreenStatus,
      popupStatus: null == popupStatus
          ? _value.popupStatus
          : popupStatus // ignore: cast_nullable_to_non_nullable
              as AudioPopupStatus,
      editingAudioId: freezed == editingAudioId
          ? _value.editingAudioId
          : editingAudioId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$AudioRecordsScreenStateImpl implements _AudioRecordsScreenState {
  const _$AudioRecordsScreenStateImpl(
      {final List<AudioRecordsModel> audioList = const [],
      this.status = AudioRecordsScreenStatus.loading,
      this.popupStatus = AudioPopupStatus.initial,
      this.editingAudioId})
      : _audioList = audioList;

  final List<AudioRecordsModel> _audioList;
  @override
  @JsonKey()
  List<AudioRecordsModel> get audioList {
    if (_audioList is EqualUnmodifiableListView) return _audioList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioList);
  }

  @override
  @JsonKey()
  final AudioRecordsScreenStatus status;
  @override
  @JsonKey()
  final AudioPopupStatus popupStatus;
  @override
  final String? editingAudioId;

  @override
  String toString() {
    return 'AudioRecordsScreenState(audioList: $audioList, status: $status, popupStatus: $popupStatus, editingAudioId: $editingAudioId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AudioRecordsScreenStateImpl &&
            const DeepCollectionEquality()
                .equals(other._audioList, _audioList) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.popupStatus, popupStatus) ||
                other.popupStatus == popupStatus) &&
            (identical(other.editingAudioId, editingAudioId) ||
                other.editingAudioId == editingAudioId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_audioList),
      status,
      popupStatus,
      editingAudioId);

  /// Create a copy of AudioRecordsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AudioRecordsScreenStateImplCopyWith<_$AudioRecordsScreenStateImpl>
      get copyWith => __$$AudioRecordsScreenStateImplCopyWithImpl<
          _$AudioRecordsScreenStateImpl>(this, _$identity);
}

abstract class _AudioRecordsScreenState implements AudioRecordsScreenState {
  const factory _AudioRecordsScreenState(
      {final List<AudioRecordsModel> audioList,
      final AudioRecordsScreenStatus status,
      final AudioPopupStatus popupStatus,
      final String? editingAudioId}) = _$AudioRecordsScreenStateImpl;

  @override
  List<AudioRecordsModel> get audioList;
  @override
  AudioRecordsScreenStatus get status;
  @override
  AudioPopupStatus get popupStatus;
  @override
  String? get editingAudioId;

  /// Create a copy of AudioRecordsScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AudioRecordsScreenStateImplCopyWith<_$AudioRecordsScreenStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
