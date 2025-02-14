import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/deleted_records_model.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc_state.dart';

part 'recently_deleted_bloc_event.freezed.dart';

@freezed
class RecentlyDeletedBlocEvent with _$RecentlyDeletedBlocEvent {
  const factory RecentlyDeletedBlocEvent.loading() =
      LoadingRecentlyDeletedBlocEvent;
  const factory RecentlyDeletedBlocEvent.loaded(
    List<DeletedRecordsModel> audioList,
  ) = LoadedRecentlyDeletedBlocEvent;
  const factory RecentlyDeletedBlocEvent.deleteAudio(String title) =
      DeleteAudioRecentlyDeletedBlocEvent;
  const factory RecentlyDeletedBlocEvent.addSelectedAudio(
    DeletedRecordsModel audio,
  ) = AddSelectedAudioRecentlyDeletedBlocEvent;
  const factory RecentlyDeletedBlocEvent.chooseMenuStatus(
    RecentlyDeletedMenuStatus menuStatus,
  ) = ChooseMenuStatusAudioRecentlyDeletedBlocEvent;
  const factory RecentlyDeletedBlocEvent.chooseAndRestore() =
      ChooseAndRestoreAudioRecentlyDeletedBlocEvent;
  const factory RecentlyDeletedBlocEvent.chooseAndDelete() =
      ChooseAndDeleteAudioRecentlyDeletedBlocEvent;
  const factory RecentlyDeletedBlocEvent.deleteAllAudio() =
      DeleteAllAudioRecentlyDeletedBlocEvent;
  const factory RecentlyDeletedBlocEvent.restoreAll() =
      RestoreAudioRecentlyDeletedBlocEvent;
  const factory RecentlyDeletedBlocEvent.progressStatus(
    RecentlyDeletedProgressStatus progressStatus,
  ) = RecentlyDeletedProgressStatusEvent;
}
