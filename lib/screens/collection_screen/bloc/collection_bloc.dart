import 'dart:async';

import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/simple_collection_model.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';
import 'package:memory_box_avada/sources/storage_service.dart';

class CollectionBloc extends Bloc<CollectionBlocEvent, CollectionBlocState> {
  final ImagePicker _picker = ImagePicker();
  final StorageService _firebaseStorageService = locator<StorageService>();
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  // ignore: unused_field
  StreamSubscription<List<SimpleCollectionModel>>? _collectionSubscription;
  // ignore: unused_field
  StreamSubscription<User?>? _authSubscription;
  CollectionBloc() : super(const CollectionBlocState()) {
    on<LoadingCollectionBlocEvent>(_loading);
    on<LoadedCollectionBlocEvent>(_loaded);
    on<CreateCollectionBlocEvent>(_createCollection);
    on<UploadImageBlocEvent>(_uploadImage);
    on<ChooseAudiosBlocEvent>(_chooseAudios);
    on<ToggleCollectionSelectionBlocEvent>(_onToggleCollectionSelection);
    on<UpdateTitleBlocEvent>(_updateTitle);
    on<UpdateDescriptionBlocEvent>(_updateDescription);
    on<DeleteAudioFromCreateCollectionBlocEvent>(_deleteAudio);

    _subscribeToCollectionStream();
    _subscribeToAuthChanges();
  }

  void _updateTitle(
    UpdateTitleBlocEvent event,
    Emitter<CollectionBlocState> emit,
  ) {
    emit(state.copyWith(newCollectionTitle: event.title));
  }

  void _deleteAudio(
    DeleteAudioFromCreateCollectionBlocEvent event,
    Emitter<CollectionBlocState> emit,
  ) {
    final updatedAudiosList = List<AudioRecordsModel>.from(state.audiosList);
    if (updatedAudiosList.contains(event.audio)) {
      updatedAudiosList.remove(event.audio);
    }
    emit(state.copyWith(audiosList: updatedAudiosList));
  }

  void _updateDescription(
    UpdateDescriptionBlocEvent event,
    Emitter<CollectionBlocState> emit,
  ) {
    emit(state.copyWith(newCollectionDescription: event.descripton));
  }

  void _subscribeToAuthChanges() {
    _authSubscription = FirebaseAuth.instance.authStateChanges().listen(
      (user) {
        if (user == null) return;

        add(const LoadingCollectionBlocEvent());

        _subscribeToCollectionStream();
      },
    );
  }

  void _subscribeToCollectionStream() {
    _collectionSubscription =
        _firebaseFirestoreService.getUserCollectionStream().listen(
      (collectionList) {
        add(LoadedCollectionBlocEvent(collectionList));
      },
    );
  }

  Future<void> _loading(
    LoadingCollectionBlocEvent event,
    Emitter<CollectionBlocState> emit,
  ) async {
    emit(state.copyWith(status: CollectionBlocStatus.loading));
  }

  Future<void> _loaded(
    LoadedCollectionBlocEvent event,
    Emitter<CollectionBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        status: CollectionBlocStatus.loaded,
        collectionList: event.collectionList,
      ),
    );
  }

  void _onToggleCollectionSelection(
    ToggleCollectionSelectionBlocEvent event,
    Emitter<CollectionBlocState> emit,
  ) {
    final updatedList =
        List<SimpleCollectionModel>.from(state.choosedCollectionList);
    if (updatedList.contains(event.collection)) {
      updatedList.remove(event.collection);
    } else {
      updatedList.add(event.collection);
    }
    emit(state.copyWith(choosedCollectionList: updatedList));
  }

  Future<void> _createCollection(
    CreateCollectionBlocEvent event,
    Emitter<CollectionBlocState> emit,
  ) async {
    var cancel = BotToast.showLoading();
    final String imageUrl =
        await _firebaseStorageService.uploadImage(state.imagePath);
    await _firebaseFirestoreService.saveUserCollection(
      state.newCollectionTitle,
      state.newCollectionDescription,
      state.audiosList,
      imageUrl,
    );
    cancel();
    emit(
      state.copyWith(
        audiosList: [],
        imagePath: '',
        imageUrl: '',
        newCollectionDescription: '',
        newCollectionTitle: '',
      ),
    );
  }

  Future<void> _uploadImage(
    UploadImageBlocEvent event,
    Emitter<CollectionBlocState> emit,
  ) async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;

    emit(
      state.copyWith(imagePath: pickedFile.path),
    );
  }

  Future<void> _chooseAudios(
    ChooseAudiosBlocEvent event,
    Emitter<CollectionBlocState> emit,
  ) async {
    emit(state.copyWith(audiosList: event.audiosList));
  }
}
