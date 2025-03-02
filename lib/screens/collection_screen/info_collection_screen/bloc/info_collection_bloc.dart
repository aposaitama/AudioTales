import 'dart:async';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';
import 'package:memory_box_avada/sources/storage_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

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
    on<InfoCollectionModeBlocEvent>(_changeMode);
    on<AddAudioToSelevtedListInfoCollectionBlocEvent>(_addAudioToSelectedList);
    on<DeleteSeveralAudiosInfoCollectionBlocEvent>(_deleteSeveralAudios);
    on<ShareCollectionInfoCollectionBlocEvent>(_shareCollection);
    on<ShareAudiosInfoCollectionBlocEvent>(_shareAudios);
    on<DonwloadAudiosInfoCollectionBlocEvent>(_downloadAudios);
  }

  void _subscribeToCollectionStream(String collectionId) {
    _audioSubscription = _firebaseFirestoreService
        .getUserCollectionStreamById(collectionId)
        .listen((collectionModel) {
      add(LoadedInfoCollectionBlocEvent(collectionModel));
    });
  }

  Future<void> _downloadAudios(
    DonwloadAudiosInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    print('start');

    try {
      for (AudioRecordsModel audio in state.selectedAudios) {
        String url = audio.url;

        // Завантажуємо аудіофайл
        var response = await http.get(Uri.parse(url));

        if (response.statusCode == 200) {
          // Отримуємо тимчасовий каталог
          Directory tempDir = await getTemporaryDirectory();
          String tempPath = '${tempDir.path}/${audio.title}.mp3';

          // Записуємо у файл
          File file = File(tempPath);
          await file.writeAsBytes(response.bodyBytes);

          // Ділимося файлом через share_plus
          XFile xFile = XFile(tempPath);
          await Share.shareXFiles([xFile]);
        } else {
          print('Не вдалося завантажити файл: $url');
        }
      }

      emit(state.copyWith(selectedAudios: []));
    } catch (e) {
      print("Помилка при завантаженні файлів: $e");
    }
  }

  Future<void> _shareCollection(
    ShareCollectionInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    String urls = state.selectedAudios.map((audio) => audio.url).join('\n');

    Share.share(
      'Прослухай колекцію ${state.collectionModel.title}, ${state.collectionModel.collectionDescription}, ось аудіозаписи:\n$urls',
    );

    emit(
      state.copyWith(
        selectedAudios: [],
      ),
    );
  }

  Future<void> _shareAudios(
    ShareAudiosInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    String urls = state.selectedAudios.map((audio) => audio.url).join('\n');

    Share.share('Прослухай ці аудіозаписи:\n$urls');

    emit(
      state.copyWith(
        selectedAudios: [],
      ),
    );
  }

  Future<void> _deleteSeveralAudios(
    DeleteSeveralAudiosInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    await _firebaseFirestoreService.deleteAudiosFromCollection(
      state.selectedAudios,
      state.collectionModel.id,
    );

    emit(
      state.copyWith(
        selectedAudios: [],
      ),
    );
  }

  Future<void> _addAudioToSelectedList(
    AddAudioToSelevtedListInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    final updatedList = List<AudioRecordsModel>.from(state.selectedAudios);

    if (updatedList.contains(event.audio)) {
      updatedList.remove(event.audio);
    } else {
      updatedList.add(event.audio);
    }

    emit(
      state.copyWith(
        selectedAudios: updatedList,
      ),
    );
  }

  Future<void> _changeMode(
    InfoCollectionModeBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        popupModeStatus: event.mode,
        selectedAudios: [],
      ),
    );
  }

  Future<void> _loading(
    LoadingInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        status: InfoCollectionState.loading,
        // collectionModel: event.collection,
      ),
    );

    _subscribeToCollectionStream(event.collectionId);
  }

  Future<void> _loaded(
    LoadedInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        collectionModel: event.collectionModel,
        status: InfoCollectionState.loaded,
      ),
    );
  }

  Future<void> _editMode(
    EditInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    emit(state.copyWith(editingMode: true));
  }

  Future<void> _save(
    SaveInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    String imageUrl = state.collectionModel.imageUrl;
    if (state.imagePath.isNotEmpty) {
      imageUrl = await _firebaseStorageService.uploadImage(state.imagePath);
    }
    await _firebaseFirestoreService.updateCollectionById(
      collectionId: state.collectionModel.id,
      newTitle: event.title,
      newDescription: event.description,
      newImageUrl: imageUrl,
    );

    emit(
      state.copyWith(
        editingMode: false,
        collectionModel: CollectionModel(
          id: state.collectionModel.id,
          title: event.title,
          audiosList: state.collectionModel.audiosList,
          imageUrl: state.collectionModel.imageUrl,
          collectionDescription: event.description,
          creationTime: state.collectionModel.creationTime,
        ),
      ),
    );
  }

  Future<void> _delete(
    DeleteInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    await _firebaseFirestoreService.deleteCollection(state.collectionModel.id);
  }

  Future<void> _closeEditingMode(
    CloseInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        editingMode: false,
      ),
    );
  }

  Future<void> _chooseImage(
    ChooseImageInfoCollectionBlocEvent event,
    Emitter<InfoCollectionBlocState> emit,
  ) async {
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
