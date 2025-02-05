import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_state.dart';
import 'package:memory_box_avada/sources/storage_service.dart';

class CollectionBloc extends Bloc<CollectionBlocEvent, CollectionBlocState> {
  final ImagePicker _picker = ImagePicker();
  final StorageService _firebaseStorageService = locator<StorageService>();
  CollectionBloc() : super(const CollectionBlocState()) {
    on<LoadingCollectionBlocEvent>(_loading);
    on<LoadedCollectionBlocEvent>(_loaded);
    on<CreateCollectionBlocEvent>(_createCollection);
    on<UploadImageBlocEvent>(_uploadImage);
    on<ChooseAudiosBlocEvent>(_chooseAudios);
  }

  Future<void> _loading(LoadingCollectionBlocEvent event,
      Emitter<CollectionBlocState> emit) async {}

  Future<void> _loaded(LoadedCollectionBlocEvent event,
      Emitter<CollectionBlocState> emit) async {}

  Future<void> _createCollection(CreateCollectionBlocEvent event,
      Emitter<CollectionBlocState> emit) async {}

  Future<void> _uploadImage(
      UploadImageBlocEvent event, Emitter<CollectionBlocState> emit) async {
    final XFile? pickedFile =
        await _picker.pickImage(source: ImageSource.gallery);
    if (pickedFile == null) return;
    await _firebaseStorageService.uploadImage(pickedFile.path);

    emit(state.copyWith(imagePath: pickedFile.path));
  }

  Future<void> _chooseAudios(
      ChooseAudiosBlocEvent event, Emitter<CollectionBlocState> emit) async {
    emit(state.copyWith(collectionList: event.audiosList));
  }
}
