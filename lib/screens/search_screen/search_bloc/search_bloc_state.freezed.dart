// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchBlocState {
  List<AudioRecordsModel> get audiosList => throw _privateConstructorUsedError;
  SearchBlocStatus get status => throw _privateConstructorUsedError;
  List<AudioRecordsModel> get filteredAudiosList =>
      throw _privateConstructorUsedError;

  /// Create a copy of SearchBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SearchBlocStateCopyWith<SearchBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocStateCopyWith<$Res> {
  factory $SearchBlocStateCopyWith(
          SearchBlocState value, $Res Function(SearchBlocState) then) =
      _$SearchBlocStateCopyWithImpl<$Res, SearchBlocState>;
  @useResult
  $Res call(
      {List<AudioRecordsModel> audiosList,
      SearchBlocStatus status,
      List<AudioRecordsModel> filteredAudiosList});
}

/// @nodoc
class _$SearchBlocStateCopyWithImpl<$Res, $Val extends SearchBlocState>
    implements $SearchBlocStateCopyWith<$Res> {
  _$SearchBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audiosList = null,
    Object? status = null,
    Object? filteredAudiosList = null,
  }) {
    return _then(_value.copyWith(
      audiosList: null == audiosList
          ? _value.audiosList
          : audiosList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchBlocStatus,
      filteredAudiosList: null == filteredAudiosList
          ? _value.filteredAudiosList
          : filteredAudiosList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchBlocStateImplCopyWith<$Res>
    implements $SearchBlocStateCopyWith<$Res> {
  factory _$$SearchBlocStateImplCopyWith(_$SearchBlocStateImpl value,
          $Res Function(_$SearchBlocStateImpl) then) =
      __$$SearchBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<AudioRecordsModel> audiosList,
      SearchBlocStatus status,
      List<AudioRecordsModel> filteredAudiosList});
}

/// @nodoc
class __$$SearchBlocStateImplCopyWithImpl<$Res>
    extends _$SearchBlocStateCopyWithImpl<$Res, _$SearchBlocStateImpl>
    implements _$$SearchBlocStateImplCopyWith<$Res> {
  __$$SearchBlocStateImplCopyWithImpl(
      _$SearchBlocStateImpl _value, $Res Function(_$SearchBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audiosList = null,
    Object? status = null,
    Object? filteredAudiosList = null,
  }) {
    return _then(_$SearchBlocStateImpl(
      audiosList: null == audiosList
          ? _value._audiosList
          : audiosList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as SearchBlocStatus,
      filteredAudiosList: null == filteredAudiosList
          ? _value._filteredAudiosList
          : filteredAudiosList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
    ));
  }
}

/// @nodoc

class _$SearchBlocStateImpl implements _SearchBlocState {
  const _$SearchBlocStateImpl(
      {final List<AudioRecordsModel> audiosList = const [],
      this.status = SearchBlocStatus.loading,
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
  final SearchBlocStatus status;
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
    return 'SearchBlocState(audiosList: $audiosList, status: $status, filteredAudiosList: $filteredAudiosList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchBlocStateImpl &&
            const DeepCollectionEquality()
                .equals(other._audiosList, _audiosList) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._filteredAudiosList, _filteredAudiosList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_audiosList),
      status,
      const DeepCollectionEquality().hash(_filteredAudiosList));

  /// Create a copy of SearchBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchBlocStateImplCopyWith<_$SearchBlocStateImpl> get copyWith =>
      __$$SearchBlocStateImplCopyWithImpl<_$SearchBlocStateImpl>(
          this, _$identity);
}

abstract class _SearchBlocState implements SearchBlocState {
  const factory _SearchBlocState(
          {final List<AudioRecordsModel> audiosList,
          final SearchBlocStatus status,
          final List<AudioRecordsModel> filteredAudiosList}) =
      _$SearchBlocStateImpl;

  @override
  List<AudioRecordsModel> get audiosList;
  @override
  SearchBlocStatus get status;
  @override
  List<AudioRecordsModel> get filteredAudiosList;

  /// Create a copy of SearchBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchBlocStateImplCopyWith<_$SearchBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
