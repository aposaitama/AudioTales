import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/deleted_records_model.dart';

part 'recently_deleted_bloc_state.freezed.dart';

enum RecentlyDeletedStatus {
  loading,
  loaded,
  error,
}

enum RecentlyDeletedMenuStatus {
  initial,
  chooseSeveral,
}

enum RecentlyDeletedProgressStatus {
  inProgress,
  initial,
}

@freezed
class RecentlyDeletedBlocState with _$RecentlyDeletedBlocState {
  const factory RecentlyDeletedBlocState({
    @Default([]) List<DeletedRecordsModel> audioList,
    @Default([]) List<DeletedRecordsModel> selectedAudioList,
    @Default(RecentlyDeletedStatus.loading) RecentlyDeletedStatus status,
    @Default({}) Map groupedAudio,
    @Default(RecentlyDeletedMenuStatus.initial)
    RecentlyDeletedMenuStatus menuStatus,
    @Default(RecentlyDeletedProgressStatus.initial)
    RecentlyDeletedProgressStatus progressStatus,
  }) = _RecentlyDeletedBlocState;
}
