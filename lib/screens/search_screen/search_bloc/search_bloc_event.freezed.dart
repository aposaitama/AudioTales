// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SearchBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() clearAudios,
    required TResult Function(String query) search,
    required TResult Function(String query) loadeNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? clearAudios,
    TResult? Function(String query)? search,
    TResult? Function(String query)? loadeNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? clearAudios,
    TResult Function(String query)? search,
    TResult Function(String query)? loadeNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchBlocEvent value) loading,
    required TResult Function(LoadedSearchBlocEvent value) loaded,
    required TResult Function(ClearSearchBlocEvent value) clearAudios,
    required TResult Function(SearchAudioRecordsEvent value) search,
    required TResult Function(LoadNextSearchEvent value) loadeNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingSearchBlocEvent value)? loading,
    TResult? Function(LoadedSearchBlocEvent value)? loaded,
    TResult? Function(ClearSearchBlocEvent value)? clearAudios,
    TResult? Function(SearchAudioRecordsEvent value)? search,
    TResult? Function(LoadNextSearchEvent value)? loadeNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchBlocEvent value)? loading,
    TResult Function(LoadedSearchBlocEvent value)? loaded,
    TResult Function(ClearSearchBlocEvent value)? clearAudios,
    TResult Function(SearchAudioRecordsEvent value)? search,
    TResult Function(LoadNextSearchEvent value)? loadeNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchBlocEventCopyWith<$Res> {
  factory $SearchBlocEventCopyWith(
          SearchBlocEvent value, $Res Function(SearchBlocEvent) then) =
      _$SearchBlocEventCopyWithImpl<$Res, SearchBlocEvent>;
}

/// @nodoc
class _$SearchBlocEventCopyWithImpl<$Res, $Val extends SearchBlocEvent>
    implements $SearchBlocEventCopyWith<$Res> {
  _$SearchBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingSearchBlocEventImplCopyWith<$Res> {
  factory _$$LoadingSearchBlocEventImplCopyWith(
          _$LoadingSearchBlocEventImpl value,
          $Res Function(_$LoadingSearchBlocEventImpl) then) =
      __$$LoadingSearchBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingSearchBlocEventImplCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res, _$LoadingSearchBlocEventImpl>
    implements _$$LoadingSearchBlocEventImplCopyWith<$Res> {
  __$$LoadingSearchBlocEventImplCopyWithImpl(
      _$LoadingSearchBlocEventImpl _value,
      $Res Function(_$LoadingSearchBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingSearchBlocEventImpl implements LoadingSearchBlocEvent {
  const _$LoadingSearchBlocEventImpl();

  @override
  String toString() {
    return 'SearchBlocEvent.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingSearchBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() clearAudios,
    required TResult Function(String query) search,
    required TResult Function(String query) loadeNext,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? clearAudios,
    TResult? Function(String query)? search,
    TResult? Function(String query)? loadeNext,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? clearAudios,
    TResult Function(String query)? search,
    TResult Function(String query)? loadeNext,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchBlocEvent value) loading,
    required TResult Function(LoadedSearchBlocEvent value) loaded,
    required TResult Function(ClearSearchBlocEvent value) clearAudios,
    required TResult Function(SearchAudioRecordsEvent value) search,
    required TResult Function(LoadNextSearchEvent value) loadeNext,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingSearchBlocEvent value)? loading,
    TResult? Function(LoadedSearchBlocEvent value)? loaded,
    TResult? Function(ClearSearchBlocEvent value)? clearAudios,
    TResult? Function(SearchAudioRecordsEvent value)? search,
    TResult? Function(LoadNextSearchEvent value)? loadeNext,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchBlocEvent value)? loading,
    TResult Function(LoadedSearchBlocEvent value)? loaded,
    TResult Function(ClearSearchBlocEvent value)? clearAudios,
    TResult Function(SearchAudioRecordsEvent value)? search,
    TResult Function(LoadNextSearchEvent value)? loadeNext,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LoadingSearchBlocEvent implements SearchBlocEvent {
  const factory LoadingSearchBlocEvent() = _$LoadingSearchBlocEventImpl;
}

/// @nodoc
abstract class _$$LoadedSearchBlocEventImplCopyWith<$Res> {
  factory _$$LoadedSearchBlocEventImplCopyWith(
          _$LoadedSearchBlocEventImpl value,
          $Res Function(_$LoadedSearchBlocEventImpl) then) =
      __$$LoadedSearchBlocEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<AudioRecordsModel> audioList});
}

/// @nodoc
class __$$LoadedSearchBlocEventImplCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res, _$LoadedSearchBlocEventImpl>
    implements _$$LoadedSearchBlocEventImplCopyWith<$Res> {
  __$$LoadedSearchBlocEventImplCopyWithImpl(_$LoadedSearchBlocEventImpl _value,
      $Res Function(_$LoadedSearchBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? audioList = null,
  }) {
    return _then(_$LoadedSearchBlocEventImpl(
      null == audioList
          ? _value._audioList
          : audioList // ignore: cast_nullable_to_non_nullable
              as List<AudioRecordsModel>,
    ));
  }
}

/// @nodoc

class _$LoadedSearchBlocEventImpl implements LoadedSearchBlocEvent {
  const _$LoadedSearchBlocEventImpl(final List<AudioRecordsModel> audioList)
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
    return 'SearchBlocEvent.loaded(audioList: $audioList)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedSearchBlocEventImpl &&
            const DeepCollectionEquality()
                .equals(other._audioList, _audioList));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_audioList));

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedSearchBlocEventImplCopyWith<_$LoadedSearchBlocEventImpl>
      get copyWith => __$$LoadedSearchBlocEventImplCopyWithImpl<
          _$LoadedSearchBlocEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() clearAudios,
    required TResult Function(String query) search,
    required TResult Function(String query) loadeNext,
  }) {
    return loaded(audioList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? clearAudios,
    TResult? Function(String query)? search,
    TResult? Function(String query)? loadeNext,
  }) {
    return loaded?.call(audioList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? clearAudios,
    TResult Function(String query)? search,
    TResult Function(String query)? loadeNext,
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
    required TResult Function(LoadingSearchBlocEvent value) loading,
    required TResult Function(LoadedSearchBlocEvent value) loaded,
    required TResult Function(ClearSearchBlocEvent value) clearAudios,
    required TResult Function(SearchAudioRecordsEvent value) search,
    required TResult Function(LoadNextSearchEvent value) loadeNext,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingSearchBlocEvent value)? loading,
    TResult? Function(LoadedSearchBlocEvent value)? loaded,
    TResult? Function(ClearSearchBlocEvent value)? clearAudios,
    TResult? Function(SearchAudioRecordsEvent value)? search,
    TResult? Function(LoadNextSearchEvent value)? loadeNext,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchBlocEvent value)? loading,
    TResult Function(LoadedSearchBlocEvent value)? loaded,
    TResult Function(ClearSearchBlocEvent value)? clearAudios,
    TResult Function(SearchAudioRecordsEvent value)? search,
    TResult Function(LoadNextSearchEvent value)? loadeNext,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class LoadedSearchBlocEvent implements SearchBlocEvent {
  const factory LoadedSearchBlocEvent(final List<AudioRecordsModel> audioList) =
      _$LoadedSearchBlocEventImpl;

  List<AudioRecordsModel> get audioList;

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedSearchBlocEventImplCopyWith<_$LoadedSearchBlocEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearSearchBlocEventImplCopyWith<$Res> {
  factory _$$ClearSearchBlocEventImplCopyWith(_$ClearSearchBlocEventImpl value,
          $Res Function(_$ClearSearchBlocEventImpl) then) =
      __$$ClearSearchBlocEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearSearchBlocEventImplCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res, _$ClearSearchBlocEventImpl>
    implements _$$ClearSearchBlocEventImplCopyWith<$Res> {
  __$$ClearSearchBlocEventImplCopyWithImpl(_$ClearSearchBlocEventImpl _value,
      $Res Function(_$ClearSearchBlocEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$ClearSearchBlocEventImpl implements ClearSearchBlocEvent {
  const _$ClearSearchBlocEventImpl();

  @override
  String toString() {
    return 'SearchBlocEvent.clearAudios()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearSearchBlocEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() clearAudios,
    required TResult Function(String query) search,
    required TResult Function(String query) loadeNext,
  }) {
    return clearAudios();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? clearAudios,
    TResult? Function(String query)? search,
    TResult? Function(String query)? loadeNext,
  }) {
    return clearAudios?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? clearAudios,
    TResult Function(String query)? search,
    TResult Function(String query)? loadeNext,
    required TResult orElse(),
  }) {
    if (clearAudios != null) {
      return clearAudios();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchBlocEvent value) loading,
    required TResult Function(LoadedSearchBlocEvent value) loaded,
    required TResult Function(ClearSearchBlocEvent value) clearAudios,
    required TResult Function(SearchAudioRecordsEvent value) search,
    required TResult Function(LoadNextSearchEvent value) loadeNext,
  }) {
    return clearAudios(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingSearchBlocEvent value)? loading,
    TResult? Function(LoadedSearchBlocEvent value)? loaded,
    TResult? Function(ClearSearchBlocEvent value)? clearAudios,
    TResult? Function(SearchAudioRecordsEvent value)? search,
    TResult? Function(LoadNextSearchEvent value)? loadeNext,
  }) {
    return clearAudios?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchBlocEvent value)? loading,
    TResult Function(LoadedSearchBlocEvent value)? loaded,
    TResult Function(ClearSearchBlocEvent value)? clearAudios,
    TResult Function(SearchAudioRecordsEvent value)? search,
    TResult Function(LoadNextSearchEvent value)? loadeNext,
    required TResult orElse(),
  }) {
    if (clearAudios != null) {
      return clearAudios(this);
    }
    return orElse();
  }
}

abstract class ClearSearchBlocEvent implements SearchBlocEvent {
  const factory ClearSearchBlocEvent() = _$ClearSearchBlocEventImpl;
}

/// @nodoc
abstract class _$$SearchAudioRecordsEventImplCopyWith<$Res> {
  factory _$$SearchAudioRecordsEventImplCopyWith(
          _$SearchAudioRecordsEventImpl value,
          $Res Function(_$SearchAudioRecordsEventImpl) then) =
      __$$SearchAudioRecordsEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SearchAudioRecordsEventImplCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res, _$SearchAudioRecordsEventImpl>
    implements _$$SearchAudioRecordsEventImplCopyWith<$Res> {
  __$$SearchAudioRecordsEventImplCopyWithImpl(
      _$SearchAudioRecordsEventImpl _value,
      $Res Function(_$SearchAudioRecordsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SearchAudioRecordsEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchAudioRecordsEventImpl implements SearchAudioRecordsEvent {
  const _$SearchAudioRecordsEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchBlocEvent.search(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchAudioRecordsEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchAudioRecordsEventImplCopyWith<_$SearchAudioRecordsEventImpl>
      get copyWith => __$$SearchAudioRecordsEventImplCopyWithImpl<
          _$SearchAudioRecordsEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() clearAudios,
    required TResult Function(String query) search,
    required TResult Function(String query) loadeNext,
  }) {
    return search(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? clearAudios,
    TResult? Function(String query)? search,
    TResult? Function(String query)? loadeNext,
  }) {
    return search?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? clearAudios,
    TResult Function(String query)? search,
    TResult Function(String query)? loadeNext,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchBlocEvent value) loading,
    required TResult Function(LoadedSearchBlocEvent value) loaded,
    required TResult Function(ClearSearchBlocEvent value) clearAudios,
    required TResult Function(SearchAudioRecordsEvent value) search,
    required TResult Function(LoadNextSearchEvent value) loadeNext,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingSearchBlocEvent value)? loading,
    TResult? Function(LoadedSearchBlocEvent value)? loaded,
    TResult? Function(ClearSearchBlocEvent value)? clearAudios,
    TResult? Function(SearchAudioRecordsEvent value)? search,
    TResult? Function(LoadNextSearchEvent value)? loadeNext,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchBlocEvent value)? loading,
    TResult Function(LoadedSearchBlocEvent value)? loaded,
    TResult Function(ClearSearchBlocEvent value)? clearAudios,
    TResult Function(SearchAudioRecordsEvent value)? search,
    TResult Function(LoadNextSearchEvent value)? loadeNext,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class SearchAudioRecordsEvent implements SearchBlocEvent {
  const factory SearchAudioRecordsEvent(final String query) =
      _$SearchAudioRecordsEventImpl;

  String get query;

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SearchAudioRecordsEventImplCopyWith<_$SearchAudioRecordsEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadNextSearchEventImplCopyWith<$Res> {
  factory _$$LoadNextSearchEventImplCopyWith(_$LoadNextSearchEventImpl value,
          $Res Function(_$LoadNextSearchEventImpl) then) =
      __$$LoadNextSearchEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$LoadNextSearchEventImplCopyWithImpl<$Res>
    extends _$SearchBlocEventCopyWithImpl<$Res, _$LoadNextSearchEventImpl>
    implements _$$LoadNextSearchEventImplCopyWith<$Res> {
  __$$LoadNextSearchEventImplCopyWithImpl(_$LoadNextSearchEventImpl _value,
      $Res Function(_$LoadNextSearchEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$LoadNextSearchEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoadNextSearchEventImpl implements LoadNextSearchEvent {
  const _$LoadNextSearchEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'SearchBlocEvent.loadeNext(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadNextSearchEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadNextSearchEventImplCopyWith<_$LoadNextSearchEventImpl> get copyWith =>
      __$$LoadNextSearchEventImplCopyWithImpl<_$LoadNextSearchEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<AudioRecordsModel> audioList) loaded,
    required TResult Function() clearAudios,
    required TResult Function(String query) search,
    required TResult Function(String query) loadeNext,
  }) {
    return loadeNext(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(List<AudioRecordsModel> audioList)? loaded,
    TResult? Function()? clearAudios,
    TResult? Function(String query)? search,
    TResult? Function(String query)? loadeNext,
  }) {
    return loadeNext?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<AudioRecordsModel> audioList)? loaded,
    TResult Function()? clearAudios,
    TResult Function(String query)? search,
    TResult Function(String query)? loadeNext,
    required TResult orElse(),
  }) {
    if (loadeNext != null) {
      return loadeNext(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoadingSearchBlocEvent value) loading,
    required TResult Function(LoadedSearchBlocEvent value) loaded,
    required TResult Function(ClearSearchBlocEvent value) clearAudios,
    required TResult Function(SearchAudioRecordsEvent value) search,
    required TResult Function(LoadNextSearchEvent value) loadeNext,
  }) {
    return loadeNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoadingSearchBlocEvent value)? loading,
    TResult? Function(LoadedSearchBlocEvent value)? loaded,
    TResult? Function(ClearSearchBlocEvent value)? clearAudios,
    TResult? Function(SearchAudioRecordsEvent value)? search,
    TResult? Function(LoadNextSearchEvent value)? loadeNext,
  }) {
    return loadeNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoadingSearchBlocEvent value)? loading,
    TResult Function(LoadedSearchBlocEvent value)? loaded,
    TResult Function(ClearSearchBlocEvent value)? clearAudios,
    TResult Function(SearchAudioRecordsEvent value)? search,
    TResult Function(LoadNextSearchEvent value)? loadeNext,
    required TResult orElse(),
  }) {
    if (loadeNext != null) {
      return loadeNext(this);
    }
    return orElse();
  }
}

abstract class LoadNextSearchEvent implements SearchBlocEvent {
  const factory LoadNextSearchEvent(final String query) =
      _$LoadNextSearchEventImpl;

  String get query;

  /// Create a copy of SearchBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadNextSearchEventImplCopyWith<_$LoadNextSearchEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
