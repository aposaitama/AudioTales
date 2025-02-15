import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_state.dart';

part 'info_collection_bloc_event.freezed.dart';

@freezed
class InfoCollectionBlocEvent with _$InfoCollectionBlocEvent {
  const factory InfoCollectionBlocEvent.loading(CollectionModel collection) =
      LoadingInfoCollectionBlocEvent;
  const factory InfoCollectionBlocEvent.loaded(
    CollectionModel collectionModel,
  ) = LoadedInfoCollectionBlocEvent;
  const factory InfoCollectionBlocEvent.edit() = EditInfoCollectionBlocEvent;
  const factory InfoCollectionBlocEvent.mode(InfoCollectionPopupMode mode) =
      InfoCollectionModeBlocEvent;

  const factory InfoCollectionBlocEvent.save(String title, String description) =
      SaveInfoCollectionBlocEvent;
  const factory InfoCollectionBlocEvent.chooseImage() =
      ChooseImageInfoCollectionBlocEvent;
  const factory InfoCollectionBlocEvent.delete() =
      DeleteInfoCollectionBlocEvent;
  const factory InfoCollectionBlocEvent.close() = CloseInfoCollectionBlocEvent;
}
