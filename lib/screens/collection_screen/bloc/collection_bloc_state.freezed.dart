// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection_bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CollectionBlocState {
  String get imagePath => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  List<CollectionModel> get collectionList =>
      throw _privateConstructorUsedError;
  List<AudioRecordsModel> get audiosList => throw _privateConstructorUsedError;
  CollectionBlocStatus get status => throw _privateConstructorUsedError;
  List<CollectionModel> get choosedCollectionList =>
      throw _privateConstructorUsedError;

  /// Create a copy of CollectionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CollectionBlocStateCopyWith<CollectionBlocState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CollectionBlocStateCopyWith<$Res> {
  factory $CollectionBlocStateCopyWith(
          CollectionBlocState value, $Res Function(CollectionBlocState) then) =
      _$CollectionBlocStateCopyWithImpl<$Res, CollectionBlocState>;
  @useResult
  $Res call(
      {String imagePath,
      String imageUrl,
      List<CollectionModel> collectionList,
      List<AudioRecordsModel> audiosList,
      CollectionBlocStatus status,
      List<CollectionModel> choosedCollectionList});
}

/// @nodoc
class _$CollectionBlocStateCopyWithImpl<$Res, $Val extends CollectionBlocState>
    implements $CollectionBlocStateCopyWith<$Res> {
  _$CollectionBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CollectionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? imageUrl = null,
    Object? collectionList = null,
    Object? audiosList = null,
    Object? status = null,
    Object? choosedCollectionList = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      collectionList: null == collectionList
          ? _value.collectionList
          : collectionList // ignore: cast_nullable_to_non_nullable
              as List<CollectionModel>,
      audiosList: null == audiosList
          ? _value.audiosList
          : audiosList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionBlocStatus,
      choosedCollectionList: null == choosedCollectionList
          ? _value.choosedCollectionList
          : choosedCollectionList // ignore: cast_nullable_to_non_nullable
              as List<CollectionModel>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CollectionBlocStateImplCopyWith<$Res>
    implements $CollectionBlocStateCopyWith<$Res> {
  factory _$$CollectionBlocStateImplCopyWith(_$CollectionBlocStateImpl value,
          $Res Function(_$CollectionBlocStateImpl) then) =
      __$$CollectionBlocStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String imagePath,
      String imageUrl,
      List<CollectionModel> collectionList,
      List<AudioRecordsModel> audiosList,
      CollectionBlocStatus status,
      List<CollectionModel> choosedCollectionList});
}

/// @nodoc
class __$$CollectionBlocStateImplCopyWithImpl<$Res>
    extends _$CollectionBlocStateCopyWithImpl<$Res, _$CollectionBlocStateImpl>
    implements _$$CollectionBlocStateImplCopyWith<$Res> {
  __$$CollectionBlocStateImplCopyWithImpl(_$CollectionBlocStateImpl _value,
      $Res Function(_$CollectionBlocStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CollectionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imagePath = null,
    Object? imageUrl = null,
    Object? collectionList = null,
    Object? audiosList = null,
    Object? status = null,
    Object? choosedCollectionList = null,
  }) {
    return _then(_$CollectionBlocStateImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      collectionList: null == collectionList
          ? _value._collectionList
          : collectionList // ignore: cast_nullable_to_non_nullable
              as List<CollectionModel>,
      audiosList: null == audiosList
          ? _value._audiosList
          : audiosList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionBlocStatus,
      choosedCollectionList: null == choosedCollectionList
          ? _value._choosedCollectionList
          : choosedCollectionList // ignore: cast_nullable_to_non_nullable
              as List<CollectionModel>,
    ));
  }
}

/// @nodoc

class _$CollectionBlocStateImpl implements _CollectionBlocState {
  const _$CollectionBlocStateImpl(
      {this.imagePath = '',
      this.imageUrl = '',
      final List<CollectionModel> collectionList = const [],
      final List<AudioRecordsModel> audiosList = const [],
      this.status = CollectionBlocStatus.loading,
      final List<CollectionModel> choosedCollectionList = const []})
      : _collectionList = collectionList,
        _audiosList = audiosList,
        _choosedCollectionList = choosedCollectionList;

  @override
  @JsonKey()
  final String imagePath;
  @override
  @JsonKey()
  final String imageUrl;
  final List<CollectionModel> _collectionList;
  @override
  @JsonKey()
  List<CollectionModel> get collectionList {
    if (_collectionList is EqualUnmodifiableListView) return _collectionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectionList);
  }

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
  final CollectionBlocStatus status;
  final List<CollectionModel> _choosedCollectionList;
  @override
  @JsonKey()
  List<CollectionModel> get choosedCollectionList {
    if (_choosedCollectionList is EqualUnmodifiableListView)
      return _choosedCollectionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choosedCollectionList);
  }

  @override
  String toString() {
    return 'CollectionBlocState(imagePath: $imagePath, imageUrl: $imageUrl, collectionList: $collectionList, audiosList: $audiosList, status: $status, choosedCollectionList: $choosedCollectionList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionBlocStateImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            const DeepCollectionEquality()
                .equals(other._collectionList, _collectionList) &&
            const DeepCollectionEquality()
                .equals(other._audiosList, _audiosList) &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality()
                .equals(other._choosedCollectionList, _choosedCollectionList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      imagePath,
      imageUrl,
      const DeepCollectionEquality().hash(_collectionList),
      const DeepCollectionEquality().hash(_audiosList),
      status,
      const DeepCollectionEquality().hash(_choosedCollectionList));

  /// Create a copy of CollectionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CollectionBlocStateImplCopyWith<_$CollectionBlocStateImpl> get copyWith =>
      __$$CollectionBlocStateImplCopyWithImpl<_$CollectionBlocStateImpl>(
          this, _$identity);
}

abstract class _CollectionBlocState implements CollectionBlocState {
  const factory _CollectionBlocState(
          {final String imagePath,
          final String imageUrl,
          final List<CollectionModel> collectionList,
          final List<AudioRecordsModel> audiosList,
          final CollectionBlocStatus status,
          final List<CollectionModel> choosedCollectionList}) =
      _$CollectionBlocStateImpl;

  @override
  String get imagePath;
  @override
  String get imageUrl;
  @override
  List<CollectionModel> get collectionList;
  @override
  List<AudioRecordsModel> get audiosList;
  @override
  CollectionBlocStatus get status;
  @override
  List<CollectionModel> get choosedCollectionList;

  /// Create a copy of CollectionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionBlocStateImplCopyWith<_$CollectionBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
