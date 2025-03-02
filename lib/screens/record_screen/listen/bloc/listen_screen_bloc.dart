import 'dart:async';
import 'dart:io';
import 'package:bot_toast/bot_toast.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';
import 'package:memory_box_avada/sources/storage_service.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

class ListenRecordBloc extends Bloc<ListenRecordEvent, ListenRecordState> {
  final StorageService _firebaseStorageService = locator<StorageService>();
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  final FlutterSoundPlayer _player = FlutterSoundPlayer();
  bool _isPlayerInitialized = false;

  ListenRecordBloc() : super(const ListenRecordState()) {
    on<StartPlayingEvent>(_startPlaying);
    on<PausePlayingEvent>(_pausePlaying);
    on<StopPlayingEvent>(_stopPlaying);
    on<ResumePlayingEvent>(_resumePlaying);
    on<UpdateCircleEvent>(_seekToPosition);
    on<ClosePlayingEvent>(_close);
    on<InitialPlayingEvent>(_initial);
    on<AddRecordNameEvent>(_addTitle);
    on<DownloadListenRecordEvent>(_downloadAudio);
    on<UpdateDurationEvent>(_updateDuration);
    on<UpdatePositionEvent>(_updatePosition);
    on<ShareListenRecordEvent>(_shareAudio);
    on<DeleteListenRecordEvent>(_deleteAudio);
    on<AdjustAudioPositionEvent>(_adjustAudioPosition);
  }

  Future<void> _downloadAudio(
    DownloadListenRecordEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    final directory = await getApplicationDocumentsDirectory();
    final sourcePath = '${directory.path}/record.aac';
    final tempFile = File(sourcePath);

    if (await tempFile.exists()) {
      try {
        final savePath = await FileSaver.instance.saveAs(
          mimeType: MimeType.aac,
          ext: 'aac',
          name: '${state.title}.aac',
          bytes: tempFile.readAsBytesSync(),
        );

        if (savePath == null) {
          return;
        }

        emit(state.copyWith(downloadStatus: DownloadListenStatus.successful));
        add(const DeleteListenRecordEvent());
      } catch (e) {
        // Логування помилки, якщо вона трапилась
        print('Error during file save: $e');
        return;
      }
    } else {}
  }

  Future<void> _shareAudio(
    ShareListenRecordEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    final directory = await getApplicationDocumentsDirectory();
    final sourcePath = '${directory.path}/record.aac';
    final tempFile = File(sourcePath);
    if (await tempFile.exists()) {
      final xFile = XFile(sourcePath);
      Share.shareXFiles([xFile]);
    }
  }

  Future<void> _deleteAudio(
    DeleteListenRecordEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/record.aac';
    final file = File(filePath);
    if (file.existsSync()) {
      file.delete();
    } else {}
    emit(
      state.copyWith(
        status: ListenStatus.close,
        downloadStatus: DownloadListenStatus.initial,
      ),
    );
  }

  Future<void> _addTitle(
    AddRecordNameEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    emit(state.copyWith(title: event.title));
  }

  Future<void> _initial(
    InitialPlayingEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    emit(state.copyWith(isAudioTitleExist: false));
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/record.aac';

    try {
      await _player.openPlayer();
      _isPlayerInitialized = true;

      final duration =
          await _player.startPlayer(fromURI: filePath, codec: Codec.aacADTS);
      await _player.stopPlayer();

      emit(
        state.copyWith(
          title: 'Аудиозапись',
          status: ListenStatus.initial,
          duration: Duration(milliseconds: duration?.inMilliseconds ?? 0),
          position: Duration.zero,
        ),
      );
    } catch (e) {
      emit(
        state.copyWith(
          status: ListenStatus.initial,
          duration: Duration.zero,
          position: Duration.zero,
        ),
      );
    }
  }

  Future<void> _startPlaying(
    StartPlayingEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/record.aac';
    if (!_isPlayerInitialized) {
      await _player.openPlayer();

      _isPlayerInitialized = true;
    }

    try {
      await _player.startPlayer(
        fromURI: filePath,
        codec: Codec.aacADTS,
        whenFinished: () {
          add(const StopPlayingEvent());
        },
      );

      emit(
        state.copyWith(
          status: ListenStatus.inProgress,
        ),
      );
      _player.setSubscriptionDuration(const Duration(milliseconds: 100));
      _player.onProgress!.listen((event) {
        if (state.status == ListenStatus.inProgress) {
          add(UpdateDurationEvent(event.duration));
          add(ListenRecordEvent.updatePosition(event.position.inMilliseconds));
        }
      });
    } catch (e) {
      emit(state.copyWith(status: ListenStatus.initial));
    }
  }

  void _seekToPosition(
    UpdateCircleEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    _player.seekToPlayer(Duration(milliseconds: event.newSliderPosition));
    emit(
      state.copyWith(
        position: Duration(
          milliseconds: event.newSliderPosition,
        ),
      ),
    );
  }

  void _updateDuration(
    UpdateDurationEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    emit(
      state.copyWith(
        duration: event.duration,
      ),
    );
  }

  void _updatePosition(
    UpdatePositionEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    emit(
      state.copyWith(
        position: Duration(milliseconds: event.newSliderPosition),
      ),
    );
  }

  Future<void> _pausePlaying(
    PausePlayingEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    try {
      await _player.pausePlayer();
      emit(state.copyWith(status: ListenStatus.pause));
    } catch (e) {}
  }

  Future<void> _resumePlaying(
    ResumePlayingEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    await _player.resumePlayer();
    emit(state.copyWith(status: ListenStatus.resume));

    _player.setSubscriptionDuration(const Duration(milliseconds: 100));
    _player.onProgress!.listen((event) {
      if (state.status == ListenStatus.inProgress ||
          state.status == ListenStatus.resume) {
        add(UpdateDurationEvent(event.duration));
        add(ListenRecordEvent.updatePosition(event.position.inMilliseconds));
      }
    });
  }

  Future<void> _adjustAudioPosition(
    AdjustAudioPositionEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    try {
      final currentPosition = state.position;
      final maxDuration = state.duration;

      Duration newPosition;
      if (event.isAdd) {
        newPosition = currentPosition +
            const Duration(
              seconds: 15,
            );
      } else {
        newPosition = currentPosition -
            const Duration(
              seconds: 15,
            );
      }

      if (newPosition < maxDuration && newPosition >= Duration.zero) {
        await _player.seekToPlayer(newPosition);
        emit(state.copyWith(position: newPosition));
      } else {
        await _player.seekToPlayer(
          newPosition < Duration.zero ? Duration.zero : maxDuration,
        );
        emit(
          state.copyWith(
            position: newPosition < Duration.zero ? Duration.zero : maxDuration,
          ),
        );
      }
    } catch (e) {
      emit(state.copyWith(position: Duration.zero));
    }
  }

  Future<void> _stopPlaying(
    StopPlayingEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    try {
      await _player.stopPlayer();
      emit(state.copyWith(status: ListenStatus.stop));
    } catch (e) {}
  }

  Future<void> _close(
    ClosePlayingEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    final isTitleExist =
        await _firebaseFirestoreService.isAudioTitleExists(state.title);

    if (!isTitleExist) {
      await _player.closePlayer();
      var cancel = BotToast.showLoading();
      final directory = await getApplicationDocumentsDirectory();
      final filePath = '${directory.path}/record.aac';
      String fileUrl =
          await _firebaseStorageService.uploadFile(filePath, state.title);
      await _firebaseFirestoreService.saveUserAudio(
        state.title,
        fileUrl,
        state.duration,
      );

      final file = File(filePath);
      if (await file.exists()) {
        await file.delete();
        cancel();
      }
      emit(
        state.copyWith(
          status: ListenStatus.close,
          duration: Duration.zero,
          position: Duration.zero,
          isAudioTitleExist: false,
        ),
      );
    } else {
      emit(
        state.copyWith(
          isAudioTitleExist: true,
        ),
      );
    }
  }
}
