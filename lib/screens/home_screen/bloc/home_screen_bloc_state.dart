import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/models/simple_collection_model.dart';

part 'home_screen_bloc_state.freezed.dart';

enum HomeScreenStatus {
  loading,
  loaded,
  error,
}

enum HomePopupStatus {
  initial,
  editing,
  addToCollection,
}

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    @Default([]) List<AudioRecordsModel> audioList,
    @Default(HomeScreenStatus.loading) HomeScreenStatus status,
    @Default(HomePopupStatus.initial) HomePopupStatus popupStatus,
    @Default([]) List<AudioRecordsModel> choosingAudioList,
    String? editingAudioId,
    String? choosingAudioId,
    List<SimpleCollectionModel>? choosingCollection,
  }) = _HomeScreenState;
}
