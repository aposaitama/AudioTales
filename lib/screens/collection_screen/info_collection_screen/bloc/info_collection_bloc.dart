import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';

class InfoCollectionBloc
    extends Bloc<InfoCollectionBlocEvent, InfoCollectionBlocState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  final ImagePicker _picker = ImagePicker();
  StreamSubscription<List<AudioRecordsModel>>? _audioSubscription;

  InfoCollectionBloc() : super(const InfoCollectionBlocState()) {
    on<LoadingInfoCollectionBlocEvent>(_loading);
    on<LoadedInfoCollectionBlocEvent>(_loaded);
    on<EditInfoCollectionBlocEvent>(_editMode);
    on<CloseInfoCollectionBlocEvent>(_closeEditingMode);
    on<ChooseImageInfoCollectionBlocEvent>(_chooseImage);
  }

  void _subscribeToCollectionStream(String collectionTitle) {
    _audioSubscription = _firebaseFirestoreService
        .getUserCollectionStreamByTitle(collectionTitle)
        .listen((audioList) {
      add(LoadedInfoCollectionBlocEvent(audioList));
    });
  }

  Future<void> _loading(LoadingInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit) async {
    emit(state.copyWith(
        status: InfoCollectionState.loading,
        collectionModel: event.collection));

    _subscribeToCollectionStream(event.collection.title);
  }

  Future<void> _loaded(LoadedInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit) async {
    emit(state.copyWith(
        audioList: event.audioList, status: InfoCollectionState.loaded));
  }

  Future<void> _editMode(EditInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit) async {
    emit(state.copyWith(editingMode: true));
  }

  Future<void> _closeEditingMode(CloseInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit) async {
    emit(state.copyWith(
      editingMode: false,
      imagePath: '',
    ));
  }

  Future<void> _chooseImage(ChooseImageInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit) async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;

    emit(state.copyWith(imagePath: pickedFile.path));
  }

  @override
  Future<void> close() {
    _audioSubscription?.cancel();
    return super.close();
  }
}
