import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';
import 'package:memory_box_avada/sources/storage_service.dart';

class InfoCollectionBloc
    extends Bloc<InfoCollectionBlocEvent, InfoCollectionBlocState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  final StorageService _firebaseStorageService = locator<StorageService>();
  final ImagePicker _picker = ImagePicker();
  StreamSubscription<CollectionModel>? _audioSubscription;

  InfoCollectionBloc() : super(const InfoCollectionBlocState()) {
    on<LoadingInfoCollectionBlocEvent>(_loading);
    on<LoadedInfoCollectionBlocEvent>(_loaded);
    on<EditInfoCollectionBlocEvent>(_editMode);
    on<CloseInfoCollectionBlocEvent>(_closeEditingMode);
    on<ChooseImageInfoCollectionBlocEvent>(_chooseImage);
    on<SaveInfoCollectionBlocEvent>(_save);
    on<DeleteInfoCollectionBlocEvent>(_delete);
  }

  void _subscribeToCollectionStream(String collectionTitle) {
    _audioSubscription = _firebaseFirestoreService
        .getUserCollectionStreamByTitle(collectionTitle)
        .listen((collectionModel) {
      add(LoadedInfoCollectionBlocEvent(collectionModel));
    });
  }

  Future<void> _loading(LoadingInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit,) async {
    emit(state.copyWith(
        status: InfoCollectionState.loading,
        collectionModel: event.collection,),);

    _subscribeToCollectionStream(event.collection.title);
  }

  Future<void> _loaded(LoadedInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit,) async {
    emit(state.copyWith(
        collectionModel: event.collectionModel,
        status: InfoCollectionState.loaded,),);
  }

  Future<void> _editMode(EditInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit,) async {
    emit(state.copyWith(editingMode: true));
  }

  Future<void> _save(SaveInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit,) async {
    var cancel = BotToast.showLoading();
    String imageUrl = '';
    if (state.imagePath.isNotEmpty) {
      imageUrl = await _firebaseStorageService.uploadImage(state.imagePath);
    }
    await _firebaseFirestoreService.updateCollectionById(
        collectionId: state.collectionModel.id,
        newTitle: event.title,
        newDescription: event.description,
        newImageUrl: imageUrl,);
    cancel();
    emit(state.copyWith(
      editingMode: false,
    ),);
  }

  Future<void> _delete(DeleteInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit,) async {
    await _firebaseFirestoreService.deleteCollection(state.collectionModel.id);
  }

  Future<void> _closeEditingMode(CloseInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit,) async {
    emit(state.copyWith(
      editingMode: false,
      imagePath: '',
      collectionModel: state.collectionModel.copyWith(
        title: state.collectionModel.title,
        collectionDescription: state.collectionModel.collectionDescription,
      ),
    ),);
  }

  Future<void> _chooseImage(ChooseImageInfoCollectionBlocEvent event,
      Emitter<InfoCollectionBlocState> emit,) async {
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
