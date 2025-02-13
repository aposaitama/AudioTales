import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';

part 'search_bloc_event.freezed.dart';

@freezed
class SearchBlocEvent with _$SearchBlocEvent {
  const factory SearchBlocEvent.loading() = LoadingSearchBlocEvent;
  const factory SearchBlocEvent.loaded(List<AudioRecordsModel> audioList) =
      LoadedSearchBlocEvent;
  const factory SearchBlocEvent.search(String query) = SearchAudioRecordsEvent;
}
