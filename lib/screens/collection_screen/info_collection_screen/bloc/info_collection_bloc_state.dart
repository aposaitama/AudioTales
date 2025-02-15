import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/collection_model.dart';

part 'info_collection_bloc_state.freezed.dart';

enum InfoCollectionState {
  loading,
  loaded,
  error,
}

enum InfoCollectionPopupMode {
  initial,
  edit,
  chooseSeveral,
  deleteCollection,
  share,
}

enum InfoCollectionEditingMode {
  initial,
  save,
  close,
}

@freezed
class InfoCollectionBlocState with _$InfoCollectionBlocState {
  const factory InfoCollectionBlocState({
    @Default([]) List<AudioRecordsModel> audioList,
    @Default(
      CollectionModel(
        id: '',
        title: '',
        audiosList: [],
        imageUrl: '',
        collectionDescription: '',
        creationTime: '',
      ),
    )
    CollectionModel collectionModel,
    @Default(false) bool editingMode,
    @Default('') String imagePath,
    @Default(InfoCollectionState.loading) InfoCollectionState status,
    @Default(InfoCollectionPopupMode.initial)
    InfoCollectionPopupMode popupModeStatus,
    @Default(InfoCollectionEditingMode.initial)
    InfoCollectionEditingMode editingModeStatus,
  }) = _InfoCollectionBlocState;
}
