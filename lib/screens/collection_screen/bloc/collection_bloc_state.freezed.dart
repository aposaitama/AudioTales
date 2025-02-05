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
  List<AudioRecordsModel> get collectionList =>
      throw _privateConstructorUsedError;
  CollectionBlocStatus get status => throw _privateConstructorUsedError;

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
      List<AudioRecordsModel> collectionList,
      CollectionBlocStatus status});
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
    Object? collectionList = null,
    Object? status = null,
  }) {
    return _then(_value.copyWith(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      collectionList: null == collectionList
          ? _value.collectionList
          : collectionList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionBlocStatus,
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
      List<AudioRecordsModel> collectionList,
      CollectionBlocStatus status});
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
    Object? collectionList = null,
    Object? status = null,
  }) {
    return _then(_$CollectionBlocStateImpl(
      imagePath: null == imagePath
          ? _value.imagePath
          : imagePath // ignore: cast_nullable_to_non_nullable
              as String,
      collectionList: null == collectionList
          ? _value._collectionList
          : collectionList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as CollectionBlocStatus,
    ));
  }
}

/// @nodoc

class _$CollectionBlocStateImpl implements _CollectionBlocState {
  const _$CollectionBlocStateImpl(
      {this.imagePath = '',
      final List<AudioRecordsModel> collectionList = const [],
      this.status = CollectionBlocStatus.loading})
      : _collectionList = collectionList;

  @override
  @JsonKey()
  final String imagePath;
  final List<AudioRecordsModel> _collectionList;
  @override
  @JsonKey()
  List<AudioRecordsModel> get collectionList {
    if (_collectionList is EqualUnmodifiableListView) return _collectionList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collectionList);
  }

  @override
  @JsonKey()
  final CollectionBlocStatus status;

  @override
  String toString() {
    return 'CollectionBlocState(imagePath: $imagePath, collectionList: $collectionList, status: $status)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CollectionBlocStateImpl &&
            (identical(other.imagePath, imagePath) ||
                other.imagePath == imagePath) &&
            const DeepCollectionEquality()
                .equals(other._collectionList, _collectionList) &&
            (identical(other.status, status) || other.status == status));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imagePath,
      const DeepCollectionEquality().hash(_collectionList), status);

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
      final List<AudioRecordsModel> collectionList,
      final CollectionBlocStatus status}) = _$CollectionBlocStateImpl;

  @override
  String get imagePath;
  @override
  List<AudioRecordsModel> get collectionList;
  @override
  CollectionBlocStatus get status;

  /// Create a copy of CollectionBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CollectionBlocStateImplCopyWith<_$CollectionBlocStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
