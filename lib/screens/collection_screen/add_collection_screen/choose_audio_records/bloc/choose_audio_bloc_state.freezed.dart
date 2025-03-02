// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'choose_audio_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ChooseAudioBlocState {
  List<AudioRecordsModel> get audiosList => throw _privateConstructorUsedError;
  int get filteredAudiosCount => throw _privateConstructorUsedError;
  ChooseAudioBlocStatus get status => throw _privateConstructorUsedError;
  List<AudioRecordsModel> get filteredAudiosList =>
      throw _privateConstructorUsedError;

  /// Create a copy of ChooseAudioBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChooseAudioBlocStateCopyWith<ChooseAudioBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseAudioBlocStateCopyWith<$Res> {
  factory $ChooseAudioBlocStateCopyWith(ChooseAudioBlocState value,
          $Res Function(ChooseAudioBlocState) then) =
      _$ChooseAudioBlocStateCopyWithImpl<$Res, ChooseAudioBlocState>;
  @useResult
  $Res call(
      {List<AudioRecordsModel> audiosList,
      int filteredAudiosCount,
      ChooseAudioBlocStatus status,
      List<AudioRecordsModel> filteredAudiosList});
}

/// @nodoc
class _$ChooseAudioBlocStateCopyWithImpl<$Res,
        $Val extends ChooseAudioBlocState>
    implements $ChooseAudioBlocStateCopyWith<$Res> {
  _$ChooseAudioBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChooseAudioBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audiosList = null,
    Object? filteredAudiosCount = null,
    Object? status = null,
    Object? filteredAudiosList = null,
  }) {
    return _then(_value.copyWith(
      audiosList: null == audiosList
          ? _value.audiosList
          : audiosList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      filteredAudiosCount: null == filteredAudiosCount
          ? _value.filteredAudiosCount
          : filteredAudiosCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChooseAudioBlocStatus,
      filteredAudiosList: null == filteredAudiosList
          ? _value.filteredAudiosList
          : filteredAudiosList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChooseAudioBlocStateImplCopyWith<$Res>
    implements $ChooseAudioBlocStateCopyWith<$Res> {
  factory _$$ChooseAudioBlocStateImplCopyWith(_$ChooseAudioBlocStateImpl value,
          $Res Function(_$ChooseAudioBlocStateImpl) then) =
      __$$ChooseAudioBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AudioRecordsModel> audiosList,
      int filteredAudiosCount,
      ChooseAudioBlocStatus status,
      List<AudioRecordsModel> filteredAudiosList});
}

/// @nodoc
class __$$ChooseAudioBlocStateImplCopyWithImpl<$Res>
    extends _$ChooseAudioBlocStateCopyWithImpl<$Res, _$ChooseAudioBlocStateImpl>
    implements _$$ChooseAudioBlocStateImplCopyWith<$Res> {
  __$$ChooseAudioBlocStateImplCopyWithImpl(_$ChooseAudioBlocStateImpl _value,
      $Res Function(_$ChooseAudioBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChooseAudioBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audiosList = null,
    Object? filteredAudiosCount = null,
    Object? status = null,
    Object? filteredAudiosList = null,
  }) {
    return _then(_$ChooseAudioBlocStateImpl(
      audiosList: null == audiosList
          ? _value._audiosList
          : audiosList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      filteredAudiosCount: null == filteredAudiosCount
          ? _value.filteredAudiosCount
          : filteredAudiosCount // ignore: cast_nullable_to_non_nullable
              as int,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as ChooseAudioBlocStatus,
      filteredAudiosList: null == filteredAudiosList
          ? _value._filteredAudiosList
          : filteredAudiosList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
    ));
  }
}

/// @nodoc

class _$ChooseAudioBlocStateImpl implements _ChooseAudioBlocState {
  const _$ChooseAudioBlocStateImpl(
      {final List<AudioRecordsModel> audiosList = const [],
      this.filteredAudiosCount = 0,
      this.status = ChooseAudioBlocStatus.loading,
      final List<AudioRecordsModel> filteredAudiosList = const []})
      : _audiosList = audiosList,
        _filteredAudiosList = filteredAudiosList;

  final List<AudioRecordsModel> _audiosList;
  @override
  @JsonKey()
  List<AudioRecordsModel> get audiosList {
    if (_audiosList is EqualUnmodifiableListView) return _audiosList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audiosList);
  }

  @override
  @JsonKey()
  final int filteredAudiosCount;
  @override
  @JsonKey()
  final ChooseAudioBlocStatus status;
  final List<AudioRecordsModel> _filteredAudiosList;
  @override
  @JsonKey()
  List<AudioRecordsModel> get filteredAudiosList {
    if (_filteredAudiosList is EqualUnmodifiableListView)
      return _filteredAudiosList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_filteredAudiosList);
  }

  @override
  String toString() {
    return 'ChooseAudioBlocState(audiosList: $audiosList, filteredAudiosCount: $filteredAudiosCount, status: $status, filteredAudiosList: $filteredAudiosList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseAudioBlocStateImpl &&
            const DeepCollectionEquality()
                .equals(other._audiosList, _audiosList) &&
            (identical(other.filteredAudiosCount, filteredAudiosCount) ||
                other.filteredAudiosCount == filteredAudiosCount) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._filteredAudiosList, _filteredAudiosList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_audiosList),
      filteredAudiosCount,
      status,
      const DeepCollectionEquality().hash(_filteredAudiosList));

  /// Create a copy of ChooseAudioBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChooseAudioBlocStateImplCopyWith<_$ChooseAudioBlocStateImpl>
      get copyWith =>
          __$$ChooseAudioBlocStateImplCopyWithImpl<_$ChooseAudioBlocStateImpl>(
              this, _$identity);
}

abstract class _ChooseAudioBlocState implements ChooseAudioBlocState {
  const factory _ChooseAudioBlocState(
          {final List<AudioRecordsModel> audiosList,
          final int filteredAudiosCount,
          final ChooseAudioBlocStatus status,
          final List<AudioRecordsModel> filteredAudiosList}) =
      _$ChooseAudioBlocStateImpl;

  @override
  List<AudioRecordsModel> get audiosList;
  @override
  int get filteredAudiosCount;
  @override
  ChooseAudioBlocStatus get status;
  @override
  List<AudioRecordsModel> get filteredAudiosList;

  /// Create a copy of ChooseAudioBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChooseAudioBlocStateImplCopyWith<_$ChooseAudioBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
