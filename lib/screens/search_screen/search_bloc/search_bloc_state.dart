import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';

part 'search_bloc_state.freezed.dart';

enum SearchBlocStatus {
  loading,
  loaded,
  error,
}

@freezed
class SearchBlocState with _$SearchBlocState {
  const factory SearchBlocState({
    @Default([]) List<AudioRecordsModel> audiosList,
    @Default(SearchBlocStatus.loading) SearchBlocStatus status,
    @Default([]) List<AudioRecordsModel> filteredAudiosList,
  }) = _SearchBlocState;
}
