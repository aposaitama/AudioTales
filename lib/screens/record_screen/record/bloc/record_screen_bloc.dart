import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_state.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class RecordBloc extends Bloc<RecordEvent, RecordState> {
  final FlutterSoundRecorder? _recorder = FlutterSoundRecorder();
  bool _isRecorderOpen = false;

  RecordBloc() : super(const RecordState(status: RecordStatus.initial)) {
    on<StartRecordingEvent>(_startRecording);
    on<UpdateWaveEvent>(_updateWave);
    on<StopRecordingEvent>(_stopRecording);
    on<PauseRecordingEvent>(_pauseRecording);
    on<ResumeRecordingEvent>(_resumeRecording);
  }

  Future<void> _startRecording(
    StartRecordingEvent event,
    Emitter<RecordState> emit,
  ) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/record.aac';
    PermissionStatus status = await Permission.microphone.request();

    if (status.isGranted && !_isRecorderOpen) {
      await _recorder!.openRecorder();
      _isRecorderOpen = true;
    } else if (!_isRecorderOpen) {
      return;
    }

    try {
      await _recorder!.startRecorder(toFile: filePath);
      _recorder.setSubscriptionDuration(const Duration(milliseconds: 100));

      _recorder.onProgress?.listen(
        (event) {
          if (event.decibels != null) {
            add(RecordEvent.updateWave(event.decibels!, event.duration));
          }
        },
      );
      emit(
        state.copyWith(
          status: RecordStatus.inProgress,
        ),
      );
    } catch (e) {
      print("Failed to start recording: $e");
      emit(
        state.copyWith(
          status: RecordStatus.initial,
        ),
      );
    }
  }

  Future<void> _resumeRecording(
      ResumeRecordingEvent event, Emitter<RecordState> emit,) async {
    await _recorder!.resumeRecorder();
    _recorder.setSubscriptionDuration(const Duration(milliseconds: 100));

    _recorder.onProgress?.listen(
      (event) {
        if (event.decibels != null) {
          add(RecordEvent.updateWave(event.decibels!, event.duration));
        }
      },
    );
    emit(
      state.copyWith(
        status: RecordStatus.inProgress,
      ),
    );
  }

  void _updateWave(UpdateWaveEvent event, Emitter<RecordState> emit) {
    if (state.status == RecordStatus.inProgress) {
      emit(
        state.copyWith(
          decibels: event.decibels,
          duration: event.duration,
        ),
      );
    }
  }

  Future<void> _pauseRecording(
    PauseRecordingEvent event,
    Emitter<RecordState> emit,
  ) async {
    if (_recorder!.isRecording) {
      try {
        await _recorder.pauseRecorder();
        print("Recording paused");
      } catch (e) {
        print("Failed to stop recording: $e");
      }
    }

    emit(
      state.copyWith(status: RecordStatus.paused, duration: state.duration),
    );
  }

  Future<void> _stopRecording(
    StopRecordingEvent event,
    Emitter<RecordState> emit,
  ) async {
    if (_recorder!.isRecording) {
      try {
        await _recorder.stopRecorder();
        print("Recording stopped");
      } catch (e) {
        print("Failed to stop recording: $e");
      }
    }

    emit(
      state.copyWith(
        status: RecordStatus.stopped,
      ),
    );
  }

  @override
  Future<void> close() async {
    try {
      await _recorder!.closeRecorder();
      _isRecorderOpen = false;
    } catch (e) {
      print("Failed to close recorder: $e");
    }
    return super.close();
  }
}
