import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';

part 'choose_audio_bloc_state.freezed.dart';

enum ChooseAudioBlocStatus {
  loading,
  loaded,
  error,
}

@freezed
class ChooseAudioBlocState with _$ChooseAudioBlocState {
  const factory ChooseAudioBlocState({
    @Default([]) List<AudioRecordsModel> audiosList,
    @Default(0) int filteredAudiosCount,
    @Default(ChooseAudioBlocStatus.loading) ChooseAudioBlocStatus status,
    @Default([]) List<AudioRecordsModel> filteredAudiosList,
  }) = _ChooseAudioBlocState;
}
