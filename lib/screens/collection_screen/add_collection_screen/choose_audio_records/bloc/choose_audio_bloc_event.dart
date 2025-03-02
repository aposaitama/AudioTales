import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';

part 'choose_audio_bloc_event.freezed.dart';

@freezed
class ChooseAudioBlocEvent with _$ChooseAudioBlocEvent {
  const factory ChooseAudioBlocEvent.loading() = LoadingChooseAudioBlocEvent;
  const factory ChooseAudioBlocEvent.loaded(List<AudioRecordsModel> audioList) =
      LoadedChooseAudioBlocEvent;
  const factory ChooseAudioBlocEvent.clearAudios() = ClearChooseAudioBlocEvent;
  const factory ChooseAudioBlocEvent.search(String query) =
      SearchChooseAudioBlocEvent;
  const factory ChooseAudioBlocEvent.loadeNext(String query) =
      LoadNextChooseAudioBlocEvent;
}
