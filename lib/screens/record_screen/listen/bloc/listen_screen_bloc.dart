import 'dart:async';
import 'dart:io';
import 'package:bot_toast/bot_toast.dart';
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
  }

  Future<void> _downloadAudio(
    DownloadListenRecordEvent event,
    Emitter<ListenRecordState> emit,
  ) async {
    // print('start');

    // Directory tempDir = await getTemporaryDirectory();
    // final aacFilePath = '${tempDir.path}/record.aac';
    // final mp3FilePath = '${tempDir.path}/record.mp3';

    // final FlutterFFmpeg _ffmpeg = FlutterFFmpeg();

    // // Конвертуємо AAC у MP3
    // int rc = await _ffmpeg.execute(
    //     '-i $aacFilePath -codec:a libmp3lame -qscale:a 2 $mp3FilePath');

    // if (rc == 0) {
    //   print('Конвертація успішна');
    //   XFile xFile = XFile(mp3FilePath);
    //   await Share.shareXFiles([xFile]);
    // } else {
    //   print('Помилка при конвертації');
    // }
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
    emit(
      state.copyWith(
        status: ListenStatus.initial,
      ),
    );
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
          add(ListenRecordEvent.updateCircle(event.duration, event.position));
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
    emit(state.copyWith(duration: event.duration, position: event.position));
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
  }

  // Future<void> _add15Sec(
  //     Add15Event event, Emitter<ListenRecordState> emit) async {
  //   try {
  //     final progress = await _player.getProgress();
  //     final currentPosition = progress['position'] ?? Duration.zero;
  //     final maxDuration = progress['duration'] ?? Duration.zero;

  //     final newPosition = currentPosition + Duration(seconds: 15);

  //     if (newPosition <= maxDuration) {
  //       await _player.seekToPlayer(newPosition);
  //       if (!emit.isDone) emit(ListenRecordProgress(newPosition));
  //     } else {
  //       await _player.seekToPlayer(maxDuration);
  //       if (!emit.isDone) emit(ListenRecordProgress(maxDuration));
  //     }
  //   } catch (e) {
  //     print("Error in _add15Sec: $e");
  //     if (!emit.isDone) emit(const ListenRecordInitial());
  //   }
  // }

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
      ),
    );
  }
}
