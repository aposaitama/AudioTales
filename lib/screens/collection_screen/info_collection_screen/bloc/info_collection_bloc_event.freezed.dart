// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_collection_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InfoCollectionBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CollectionModel collection) loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() edit,
    required TResult Function() save,
    required TResult Function() chooseImage,
    required TResult Function() close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CollectionModel collection)? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? edit,
    TResult? Function()? save,
    TResult? Function()? chooseImage,
    TResult? Function()? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CollectionModel collection)? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? edit,
    TResult Function()? save,
    TResult Function()? chooseImage,
    TResult Function()? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInfoCollectionBlocEvent value) loading,
    required TResult Function(LoadedInfoCollectionBlocEvent value) loaded,
    required TResult Function(EditInfoCollectionBlocEvent value) edit,
    required TResult Function(SaveInfoCollectionBlocEvent value) save,
    required TResult Function(ChooseImageInfoCollectionBlocEvent value)
        chooseImage,
    required TResult Function(CloseInfoCollectionBlocEvent value) close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult? Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult? Function(EditInfoCollectionBlocEvent value)? edit,
    TResult? Function(SaveInfoCollectionBlocEvent value)? save,
    TResult? Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult? Function(CloseInfoCollectionBlocEvent value)? close,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult Function(EditInfoCollectionBlocEvent value)? edit,
    TResult Function(SaveInfoCollectionBlocEvent value)? save,
    TResult Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult Function(CloseInfoCollectionBlocEvent value)? close,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCollectionBlocEventCopyWith<$Res> {
  factory $InfoCollectionBlocEventCopyWith(InfoCollectionBlocEvent value,
          $Res Function(InfoCollectionBlocEvent) then) =
      _$InfoCollectionBlocEventCopyWithImpl<$Res, InfoCollectionBlocEvent>;
}

/// @nodoc
class _$InfoCollectionBlocEventCopyWithImpl<$Res,
        $Val extends InfoCollectionBlocEvent>
    implements $InfoCollectionBlocEventCopyWith<$Res> {
  _$InfoCollectionBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingInfoCollectionBlocEventImplCopyWith<$Res> {
  factory _$$LoadingInfoCollectionBlocEventImplCopyWith(
          _$LoadingInfoCollectionBlocEventImpl value,
          $Res Function(_$LoadingInfoCollectionBlocEventImpl) then) =
      __$$LoadingInfoCollectionBlocEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({CollectionModel collection});

  $CollectionModelCopyWith<$Res> get collection;
}

/// @nodoc
class __$$LoadingInfoCollectionBlocEventImplCopyWithImpl<$Res>
    extends _$InfoCollectionBlocEventCopyWithImpl<$Res,
        _$LoadingInfoCollectionBlocEventImpl>
    implements _$$LoadingInfoCollectionBlocEventImplCopyWith<$Res> {
  __$$LoadingInfoCollectionBlocEventImplCopyWithImpl(
      _$LoadingInfoCollectionBlocEventImpl _value,
      $Res Function(_$LoadingInfoCollectionBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? collection = null,
  }) {
    return _then(_$LoadingInfoCollectionBlocEventImpl(
      null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as CollectionModel,
    ));
  }

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CollectionModelCopyWith<$Res> get collection {
    return $CollectionModelCopyWith<$Res>(_value.collection, (value) {
      return _then(_value.copyWith(collection: value));
    });
  }
}

/// @nodoc

class _$LoadingInfoCollectionBlocEventImpl
    implements LoadingInfoCollectionBlocEvent {
  const _$LoadingInfoCollectionBlocEventImpl(this.collection);

  @override
  final CollectionModel collection;

  @override
  String toString() {
    return 'InfoCollectionBlocEvent.loading(collection: $collection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingInfoCollectionBlocEventImpl &&
            (identical(other.collection, collection) ||
                other.collection == collection));
  }

  @override
  int get hashCode => Object.hash(runtimeType, collection);

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingInfoCollectionBlocEventImplCopyWith<
          _$LoadingInfoCollectionBlocEventImpl>
      get copyWith => __$$LoadingInfoCollectionBlocEventImplCopyWithImpl<
          _$LoadingInfoCollectionBlocEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CollectionModel collection) loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() edit,
    required TResult Function() save,
    required TResult Function() chooseImage,
    required TResult Function() close,
  }) {
    return loading(collection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CollectionModel collection)? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? edit,
    TResult? Function()? save,
    TResult? Function()? chooseImage,
    TResult? Function()? close,
  }) {
    return loading?.call(collection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CollectionModel collection)? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? edit,
    TResult Function()? save,
    TResult Function()? chooseImage,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(collection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInfoCollectionBlocEvent value) loading,
    required TResult Function(LoadedInfoCollectionBlocEvent value) loaded,
    required TResult Function(EditInfoCollectionBlocEvent value) edit,
    required TResult Function(SaveInfoCollectionBlocEvent value) save,
    required TResult Function(ChooseImageInfoCollectionBlocEvent value)
        chooseImage,
    required TResult Function(CloseInfoCollectionBlocEvent value) close,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult? Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult? Function(EditInfoCollectionBlocEvent value)? edit,
    TResult? Function(SaveInfoCollectionBlocEvent value)? save,
    TResult? Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult? Function(CloseInfoCollectionBlocEvent value)? close,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult Function(EditInfoCollectionBlocEvent value)? edit,
    TResult Function(SaveInfoCollectionBlocEvent value)? save,
    TResult Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult Function(CloseInfoCollectionBlocEvent value)? close,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingInfoCollectionBlocEvent
    implements InfoCollectionBlocEvent {
  const factory LoadingInfoCollectionBlocEvent(
      final CollectionModel collection) = _$LoadingInfoCollectionBlocEventImpl;

  CollectionModel get collection;

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadingInfoCollectionBlocEventImplCopyWith<
          _$LoadingInfoCollectionBlocEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadedInfoCollectionBlocEventImplCopyWith<$Res> {
  factory _$$LoadedInfoCollectionBlocEventImplCopyWith(
          _$LoadedInfoCollectionBlocEventImpl value,
          $Res Function(_$LoadedInfoCollectionBlocEventImpl) then) =
      __$$LoadedInfoCollectionBlocEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AudioRecordsModel> audioList});
}

/// @nodoc
class __$$LoadedInfoCollectionBlocEventImplCopyWithImpl<$Res>
    extends _$InfoCollectionBlocEventCopyWithImpl<$Res,
        _$LoadedInfoCollectionBlocEventImpl>
    implements _$$LoadedInfoCollectionBlocEventImplCopyWith<$Res> {
  __$$LoadedInfoCollectionBlocEventImplCopyWithImpl(
      _$LoadedInfoCollectionBlocEventImpl _value,
      $Res Function(_$LoadedInfoCollectionBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioList = null,
  }) {
    return _then(_$LoadedInfoCollectionBlocEventImpl(
      null == audioList
          ? _value._audioList
          : audioList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
    ));
  }
}

/// @nodoc

class _$LoadedInfoCollectionBlocEventImpl
    implements LoadedInfoCollectionBlocEvent {
  const _$LoadedInfoCollectionBlocEventImpl(
      final List<AudioRecordsModel> audioList)
      : _audioList = audioList;

  final List<AudioRecordsModel> _audioList;
  @override
  List<AudioRecordsModel> get audioList {
    if (_audioList is EqualUnmodifiableListView) return _audioList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_audioList);
  }

  @override
  String toString() {
    return 'InfoCollectionBlocEvent.loaded(audioList: $audioList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedInfoCollectionBlocEventImpl &&
            const DeepCollectionEquality()
                .equals(other._audioList, _audioList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_audioList));

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedInfoCollectionBlocEventImplCopyWith<
          _$LoadedInfoCollectionBlocEventImpl>
      get copyWith => __$$LoadedInfoCollectionBlocEventImplCopyWithImpl<
          _$LoadedInfoCollectionBlocEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CollectionModel collection) loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() edit,
    required TResult Function() save,
    required TResult Function() chooseImage,
    required TResult Function() close,
  }) {
    return loaded(audioList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CollectionModel collection)? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? edit,
    TResult? Function()? save,
    TResult? Function()? chooseImage,
    TResult? Function()? close,
  }) {
    return loaded?.call(audioList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CollectionModel collection)? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? edit,
    TResult Function()? save,
    TResult Function()? chooseImage,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(audioList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInfoCollectionBlocEvent value) loading,
    required TResult Function(LoadedInfoCollectionBlocEvent value) loaded,
    required TResult Function(EditInfoCollectionBlocEvent value) edit,
    required TResult Function(SaveInfoCollectionBlocEvent value) save,
    required TResult Function(ChooseImageInfoCollectionBlocEvent value)
        chooseImage,
    required TResult Function(CloseInfoCollectionBlocEvent value) close,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult? Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult? Function(EditInfoCollectionBlocEvent value)? edit,
    TResult? Function(SaveInfoCollectionBlocEvent value)? save,
    TResult? Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult? Function(CloseInfoCollectionBlocEvent value)? close,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult Function(EditInfoCollectionBlocEvent value)? edit,
    TResult Function(SaveInfoCollectionBlocEvent value)? save,
    TResult Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult Function(CloseInfoCollectionBlocEvent value)? close,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedInfoCollectionBlocEvent
    implements InfoCollectionBlocEvent {
  const factory LoadedInfoCollectionBlocEvent(
          final List<AudioRecordsModel> audioList) =
      _$LoadedInfoCollectionBlocEventImpl;

  List<AudioRecordsModel> get audioList;

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedInfoCollectionBlocEventImplCopyWith<
          _$LoadedInfoCollectionBlocEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditInfoCollectionBlocEventImplCopyWith<$Res> {
  factory _$$EditInfoCollectionBlocEventImplCopyWith(
          _$EditInfoCollectionBlocEventImpl value,
          $Res Function(_$EditInfoCollectionBlocEventImpl) then) =
      __$$EditInfoCollectionBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditInfoCollectionBlocEventImplCopyWithImpl<$Res>
    extends _$InfoCollectionBlocEventCopyWithImpl<$Res,
        _$EditInfoCollectionBlocEventImpl>
    implements _$$EditInfoCollectionBlocEventImplCopyWith<$Res> {
  __$$EditInfoCollectionBlocEventImplCopyWithImpl(
      _$EditInfoCollectionBlocEventImpl _value,
      $Res Function(_$EditInfoCollectionBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$EditInfoCollectionBlocEventImpl implements EditInfoCollectionBlocEvent {
  const _$EditInfoCollectionBlocEventImpl();

  @override
  String toString() {
    return 'InfoCollectionBlocEvent.edit()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditInfoCollectionBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CollectionModel collection) loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() edit,
    required TResult Function() save,
    required TResult Function() chooseImage,
    required TResult Function() close,
  }) {
    return edit();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CollectionModel collection)? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? edit,
    TResult? Function()? save,
    TResult? Function()? chooseImage,
    TResult? Function()? close,
  }) {
    return edit?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CollectionModel collection)? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? edit,
    TResult Function()? save,
    TResult Function()? chooseImage,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInfoCollectionBlocEvent value) loading,
    required TResult Function(LoadedInfoCollectionBlocEvent value) loaded,
    required TResult Function(EditInfoCollectionBlocEvent value) edit,
    required TResult Function(SaveInfoCollectionBlocEvent value) save,
    required TResult Function(ChooseImageInfoCollectionBlocEvent value)
        chooseImage,
    required TResult Function(CloseInfoCollectionBlocEvent value) close,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult? Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult? Function(EditInfoCollectionBlocEvent value)? edit,
    TResult? Function(SaveInfoCollectionBlocEvent value)? save,
    TResult? Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult? Function(CloseInfoCollectionBlocEvent value)? close,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult Function(EditInfoCollectionBlocEvent value)? edit,
    TResult Function(SaveInfoCollectionBlocEvent value)? save,
    TResult Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult Function(CloseInfoCollectionBlocEvent value)? close,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class EditInfoCollectionBlocEvent implements InfoCollectionBlocEvent {
  const factory EditInfoCollectionBlocEvent() =
      _$EditInfoCollectionBlocEventImpl;
}

/// @nodoc
abstract class _$$SaveInfoCollectionBlocEventImplCopyWith<$Res> {
  factory _$$SaveInfoCollectionBlocEventImplCopyWith(
          _$SaveInfoCollectionBlocEventImpl value,
          $Res Function(_$SaveInfoCollectionBlocEventImpl) then) =
      __$$SaveInfoCollectionBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SaveInfoCollectionBlocEventImplCopyWithImpl<$Res>
    extends _$InfoCollectionBlocEventCopyWithImpl<$Res,
        _$SaveInfoCollectionBlocEventImpl>
    implements _$$SaveInfoCollectionBlocEventImplCopyWith<$Res> {
  __$$SaveInfoCollectionBlocEventImplCopyWithImpl(
      _$SaveInfoCollectionBlocEventImpl _value,
      $Res Function(_$SaveInfoCollectionBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$SaveInfoCollectionBlocEventImpl implements SaveInfoCollectionBlocEvent {
  const _$SaveInfoCollectionBlocEventImpl();

  @override
  String toString() {
    return 'InfoCollectionBlocEvent.save()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveInfoCollectionBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CollectionModel collection) loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() edit,
    required TResult Function() save,
    required TResult Function() chooseImage,
    required TResult Function() close,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CollectionModel collection)? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? edit,
    TResult? Function()? save,
    TResult? Function()? chooseImage,
    TResult? Function()? close,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CollectionModel collection)? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? edit,
    TResult Function()? save,
    TResult Function()? chooseImage,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInfoCollectionBlocEvent value) loading,
    required TResult Function(LoadedInfoCollectionBlocEvent value) loaded,
    required TResult Function(EditInfoCollectionBlocEvent value) edit,
    required TResult Function(SaveInfoCollectionBlocEvent value) save,
    required TResult Function(ChooseImageInfoCollectionBlocEvent value)
        chooseImage,
    required TResult Function(CloseInfoCollectionBlocEvent value) close,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult? Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult? Function(EditInfoCollectionBlocEvent value)? edit,
    TResult? Function(SaveInfoCollectionBlocEvent value)? save,
    TResult? Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult? Function(CloseInfoCollectionBlocEvent value)? close,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult Function(EditInfoCollectionBlocEvent value)? edit,
    TResult Function(SaveInfoCollectionBlocEvent value)? save,
    TResult Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult Function(CloseInfoCollectionBlocEvent value)? close,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class SaveInfoCollectionBlocEvent implements InfoCollectionBlocEvent {
  const factory SaveInfoCollectionBlocEvent() =
      _$SaveInfoCollectionBlocEventImpl;
}

/// @nodoc
abstract class _$$ChooseImageInfoCollectionBlocEventImplCopyWith<$Res> {
  factory _$$ChooseImageInfoCollectionBlocEventImplCopyWith(
          _$ChooseImageInfoCollectionBlocEventImpl value,
          $Res Function(_$ChooseImageInfoCollectionBlocEventImpl) then) =
      __$$ChooseImageInfoCollectionBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ChooseImageInfoCollectionBlocEventImplCopyWithImpl<$Res>
    extends _$InfoCollectionBlocEventCopyWithImpl<$Res,
        _$ChooseImageInfoCollectionBlocEventImpl>
    implements _$$ChooseImageInfoCollectionBlocEventImplCopyWith<$Res> {
  __$$ChooseImageInfoCollectionBlocEventImplCopyWithImpl(
      _$ChooseImageInfoCollectionBlocEventImpl _value,
      $Res Function(_$ChooseImageInfoCollectionBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ChooseImageInfoCollectionBlocEventImpl
    implements ChooseImageInfoCollectionBlocEvent {
  const _$ChooseImageInfoCollectionBlocEventImpl();

  @override
  String toString() {
    return 'InfoCollectionBlocEvent.chooseImage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChooseImageInfoCollectionBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CollectionModel collection) loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() edit,
    required TResult Function() save,
    required TResult Function() chooseImage,
    required TResult Function() close,
  }) {
    return chooseImage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CollectionModel collection)? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? edit,
    TResult? Function()? save,
    TResult? Function()? chooseImage,
    TResult? Function()? close,
  }) {
    return chooseImage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CollectionModel collection)? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? edit,
    TResult Function()? save,
    TResult Function()? chooseImage,
    TResult Function()? close,
    required TResult orElse(),
  }) {
    if (chooseImage != null) {
      return chooseImage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingInfoCollectionBlocEvent value) loading,
    required TResult Function(LoadedInfoCollectionBlocEvent value) loaded,
    required TResult Function(EditInfoCollectionBlocEvent value) edit,
    required TResult Function(SaveInfoCollectionBlocEvent value) save,
    required TResult Function(ChooseImageInfoCollectionBlocEvent value)
        chooseImage,
    required TResult Function(CloseInfoCollectionBlocEvent value) close,
  }) {
    return chooseImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult? Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult? Function(EditInfoCollectionBlocEvent value)? edit,
    TResult? Function(SaveInfoCollectionBlocEvent value)? save,
    TResult? Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult? Function(CloseInfoCollectionBlocEvent value)? close,
  }) {
    return chooseImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult Function(EditInfoCollectionBlocEvent value)? edit,
    TResult Function(SaveInfoCollectionBlocEvent value)? save,
    TResult Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult Function(CloseInfoCollectionBlocEvent value)? close,
    required TResult orElse(),
  }) {
    if (chooseImage != null) {
      return chooseImage(this);
    }
    return orElse();
  }
}

abstract class ChooseImageInfoCollectionBlocEvent
    implements InfoCollectionBlocEvent {
  const factory ChooseImageInfoCollectionBlocEvent() =
      _$ChooseImageInfoCollectionBlocEventImpl;
}

/// @nodoc
abstract class _$$CloseInfoCollectionBlocEventImplCopyWith<$Res> {
  factory _$$CloseInfoCollectionBlocEventImplCopyWith(
          _$CloseInfoCollectionBlocEventImpl value,
          $Res Function(_$CloseInfoCollectionBlocEventImpl) then) =
      __$$CloseInfoCollectionBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CloseInfoCollectionBlocEventImplCopyWithImpl<$Res>
    extends _$InfoCollectionBlocEventCopyWithImpl<$Res,
        _$CloseInfoCollectionBlocEventImpl>
    implements _$$CloseInfoCollectionBlocEventImplCopyWith<$Res> {
  __$$CloseInfoCollectionBlocEventImplCopyWithImpl(
      _$CloseInfoCollectionBlocEventImpl _value,
      $Res Function(_$CloseInfoCollectionBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of InfoCollectionBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CloseInfoCollectionBlocEventImpl
    implements CloseInfoCollectionBlocEvent {
  const _$CloseInfoCollectionBlocEventImpl();

  @override
  String toString() {
    return 'InfoCollectionBlocEvent.close()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloseInfoCollectionBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(CollectionModel collection) loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() edit,
    required TResult Function() save,
    required TResult Function() chooseImage,
    required TResult Function() close,
  }) {
    return close();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(CollectionModel collection)? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? edit,
    TResult? Function()? save,
    TResult? Function()? chooseImage,
    TResult? Function()? close,
  }) {
    return close?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(CollectionModel collection)? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? edit,
    TResult Function()? save,
    TResult Function()? chooseImage,
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
    required TResult Function(LoadingInfoCollectionBlocEvent value) loading,
    required TResult Function(LoadedInfoCollectionBlocEvent value) loaded,
    required TResult Function(EditInfoCollectionBlocEvent value) edit,
    required TResult Function(SaveInfoCollectionBlocEvent value) save,
    required TResult Function(ChooseImageInfoCollectionBlocEvent value)
        chooseImage,
    required TResult Function(CloseInfoCollectionBlocEvent value) close,
  }) {
    return close(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult? Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult? Function(EditInfoCollectionBlocEvent value)? edit,
    TResult? Function(SaveInfoCollectionBlocEvent value)? save,
    TResult? Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult? Function(CloseInfoCollectionBlocEvent value)? close,
  }) {
    return close?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingInfoCollectionBlocEvent value)? loading,
    TResult Function(LoadedInfoCollectionBlocEvent value)? loaded,
    TResult Function(EditInfoCollectionBlocEvent value)? edit,
    TResult Function(SaveInfoCollectionBlocEvent value)? save,
    TResult Function(ChooseImageInfoCollectionBlocEvent value)? chooseImage,
    TResult Function(CloseInfoCollectionBlocEvent value)? close,
    required TResult orElse(),
  }) {
    if (close != null) {
      return close(this);
    }
    return orElse();
  }
}

abstract class CloseInfoCollectionBlocEvent implements InfoCollectionBlocEvent {
  const factory CloseInfoCollectionBlocEvent() =
      _$CloseInfoCollectionBlocEventImpl;
}
