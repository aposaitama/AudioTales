// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recently_deleted_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RecentlyDeletedBlocState {
  List<DeletedRecordsModel> get audioList => throw _privateConstructorUsedError;
  List<DeletedRecordsModel> get selectedAudioList =>
      throw _privateConstructorUsedError;
  RecentlyDeletedStatus get status => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get groupedAudio => throw _privateConstructorUsedError;
  RecentlyDeletedMenuStatus get menuStatus =>
      throw _privateConstructorUsedError;
  RecentlyDeletedProgressStatus get progressStatus =>
      throw _privateConstructorUsedError;

  /// Create a copy of RecentlyDeletedBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecentlyDeletedBlocStateCopyWith<RecentlyDeletedBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecentlyDeletedBlocStateCopyWith<$Res> {
  factory $RecentlyDeletedBlocStateCopyWith(RecentlyDeletedBlocState value,
          $Res Function(RecentlyDeletedBlocState) then) =
      _$RecentlyDeletedBlocStateCopyWithImpl<$Res, RecentlyDeletedBlocState>;
  @useResult
  $Res call(
      {List<DeletedRecordsModel> audioList,
      List<DeletedRecordsModel> selectedAudioList,
      RecentlyDeletedStatus status,
      Map<dynamic, dynamic> groupedAudio,
      RecentlyDeletedMenuStatus menuStatus,
      RecentlyDeletedProgressStatus progressStatus});
}

/// @nodoc
class _$RecentlyDeletedBlocStateCopyWithImpl<$Res,
        $Val extends RecentlyDeletedBlocState>
    implements $RecentlyDeletedBlocStateCopyWith<$Res> {
  _$RecentlyDeletedBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecentlyDeletedBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioList = null,
    Object? selectedAudioList = null,
    Object? status = null,
    Object? groupedAudio = null,
    Object? menuStatus = null,
    Object? progressStatus = null,
  }) {
    return _then(_value.copyWith(
      audioList: null == audioList
          ? _value.audioList
          : audioList // ignore: cast_nullable_to_non_nullable
              as List<DeletedRecordsModel>,
      selectedAudioList: null == selectedAudioList
          ? _value.selectedAudioList
          : selectedAudioList // ignore: cast_nullable_to_non_nullable
              as List<DeletedRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecentlyDeletedStatus,
      groupedAudio: null == groupedAudio
          ? _value.groupedAudio
          : groupedAudio // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      menuStatus: null == menuStatus
          ? _value.menuStatus
          : menuStatus // ignore: cast_nullable_to_non_nullable
              as RecentlyDeletedMenuStatus,
      progressStatus: null == progressStatus
          ? _value.progressStatus
          : progressStatus // ignore: cast_nullable_to_non_nullable
              as RecentlyDeletedProgressStatus,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecentlyDeletedBlocStateImplCopyWith<$Res>
    implements $RecentlyDeletedBlocStateCopyWith<$Res> {
  factory _$$RecentlyDeletedBlocStateImplCopyWith(
          _$RecentlyDeletedBlocStateImpl value,
          $Res Function(_$RecentlyDeletedBlocStateImpl) then) =
      __$$RecentlyDeletedBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<DeletedRecordsModel> audioList,
      List<DeletedRecordsModel> selectedAudioList,
      RecentlyDeletedStatus status,
      Map<dynamic, dynamic> groupedAudio,
      RecentlyDeletedMenuStatus menuStatus,
      RecentlyDeletedProgressStatus progressStatus});
}

/// @nodoc
class __$$RecentlyDeletedBlocStateImplCopyWithImpl<$Res>
    extends _$RecentlyDeletedBlocStateCopyWithImpl<$Res,
        _$RecentlyDeletedBlocStateImpl>
    implements _$$RecentlyDeletedBlocStateImplCopyWith<$Res> {
  __$$RecentlyDeletedBlocStateImplCopyWithImpl(
      _$RecentlyDeletedBlocStateImpl _value,
      $Res Function(_$RecentlyDeletedBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecentlyDeletedBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioList = null,
    Object? selectedAudioList = null,
    Object? status = null,
    Object? groupedAudio = null,
    Object? menuStatus = null,
    Object? progressStatus = null,
  }) {
    return _then(_$RecentlyDeletedBlocStateImpl(
      audioList: null == audioList
          ? _value._audioList
          : audioList // ignore: cast_nullable_to_non_nullable
              as List<DeletedRecordsModel>,
      selectedAudioList: null == selectedAudioList
          ? _value._selectedAudioList
          : selectedAudioList // ignore: cast_nullable_to_non_nullable
              as List<DeletedRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as RecentlyDeletedStatus,
      groupedAudio: null == groupedAudio
          ? _value._groupedAudio
          : groupedAudio // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      menuStatus: null == menuStatus
          ? _value.menuStatus
          : menuStatus // ignore: cast_nullable_to_non_nullable
              as RecentlyDeletedMenuStatus,
      progressStatus: null == progressStatus
          ? _value.progressStatus
          : progressStatus // ignore: cast_nullable_to_non_nullable
              as RecentlyDeletedProgressStatus,
    ));
  }
}

/// @nodoc

class _$RecentlyDeletedBlocStateImpl implements _RecentlyDeletedBlocState {
  const _$RecentlyDeletedBlocStateImpl(
      {final List<DeletedRecordsModel> audioList = const [],
      final List<DeletedRecordsModel> selectedAudioList = const [],
      this.status = RecentlyDeletedStatus.loading,
      final Map<dynamic, dynamic> groupedAudio = const {},
      this.menuStatus = RecentlyDeletedMenuStatus.initial,
      this.progressStatus = RecentlyDeletedProgressStatus.initial})
      : _audioList = audioList,
        _selectedAudioList = selectedAudioList,
        _groupedAudio = groupedAudio;

  final List<DeletedRecordsModel> _audioList;
  @override
  @JsonKey()
  List<DeletedRecordsModel> get audioList {
    if (_audioList is EqualUnmodifiableListView) return _audioList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioList);
  }

  final List<DeletedRecordsModel> _selectedAudioList;
  @override
  @JsonKey()
  List<DeletedRecordsModel> get selectedAudioList {
    if (_selectedAudioList is EqualUnmodifiableListView)
      return _selectedAudioList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedAudioList);
  }

  @override
  @JsonKey()
  final RecentlyDeletedStatus status;
  final Map<dynamic, dynamic> _groupedAudio;
  @override
  @JsonKey()
  Map<dynamic, dynamic> get groupedAudio {
    if (_groupedAudio is EqualUnmodifiableMapView) return _groupedAudio;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_groupedAudio);
  }

  @override
  @JsonKey()
  final RecentlyDeletedMenuStatus menuStatus;
  @override
  @JsonKey()
  final RecentlyDeletedProgressStatus progressStatus;

  @override
  String toString() {
    return 'RecentlyDeletedBlocState(audioList: $audioList, selectedAudioList: $selectedAudioList, status: $status, groupedAudio: $groupedAudio, menuStatus: $menuStatus, progressStatus: $progressStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecentlyDeletedBlocStateImpl &&
            const DeepCollectionEquality()
                .equals(other._audioList, _audioList) &&
            const DeepCollectionEquality()
                .equals(other._selectedAudioList, _selectedAudioList) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._groupedAudio, _groupedAudio) &&
            (identical(other.menuStatus, menuStatus) ||
                other.menuStatus == menuStatus) &&
            (identical(other.progressStatus, progressStatus) ||
                other.progressStatus == progressStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_audioList),
      const DeepCollectionEquality().hash(_selectedAudioList),
      status,
      const DeepCollectionEquality().hash(_groupedAudio),
      menuStatus,
      progressStatus);

  /// Create a copy of RecentlyDeletedBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecentlyDeletedBlocStateImplCopyWith<_$RecentlyDeletedBlocStateImpl>
      get copyWith => __$$RecentlyDeletedBlocStateImplCopyWithImpl<
          _$RecentlyDeletedBlocStateImpl>(this, _$identity);
}

abstract class _RecentlyDeletedBlocState implements RecentlyDeletedBlocState {
  const factory _RecentlyDeletedBlocState(
          {final List<DeletedRecordsModel> audioList,
          final List<DeletedRecordsModel> selectedAudioList,
          final RecentlyDeletedStatus status,
          final Map<dynamic, dynamic> groupedAudio,
          final RecentlyDeletedMenuStatus menuStatus,
          final RecentlyDeletedProgressStatus progressStatus}) =
      _$RecentlyDeletedBlocStateImpl;

  @override
  List<DeletedRecordsModel> get audioList;
  @override
  List<DeletedRecordsModel> get selectedAudioList;
  @override
  RecentlyDeletedStatus get status;
  @override
  Map<dynamic, dynamic> get groupedAudio;
  @override
  RecentlyDeletedMenuStatus get menuStatus;
  @override
  RecentlyDeletedProgressStatus get progressStatus;

  /// Create a copy of RecentlyDeletedBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecentlyDeletedBlocStateImplCopyWith<_$RecentlyDeletedBlocStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
