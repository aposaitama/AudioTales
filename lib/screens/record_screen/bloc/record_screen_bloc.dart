import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_screen_state.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class RecordBloc extends Bloc<RecordEvent, RecordState> {
  final FlutterSoundRecorder? _recorder = FlutterSoundRecorder();
  bool _isRecorderOpen = false;

  RecordBloc() : super(RecordingInitial()) {
    on<StartRecordingEvent>(_startRecording);
    on<UpdateWaveEvent>(_updateWave);
    on<StopRecordingEvent>(_stopRecording);
  }

  Future<void> _startRecording(
      StartRecordingEvent event, Emitter<RecordState> emit) async {
    final directory = await getApplicationDocumentsDirectory();
    final filePath = '${directory.path}/audio_record.aac';
    PermissionStatus status = await Permission.microphone.request();
    if (status.isGranted && !_isRecorderOpen) {
      await _recorder!.openRecorder();
      _isRecorderOpen = true;
    } else if (!_isRecorderOpen) {}

    try {
      await _recorder!.startRecorder(toFile: filePath);
      _recorder.setSubscriptionDuration(const Duration(milliseconds: 100));

      _recorder.onProgress?.listen((event) {
        if (event.decibels != null) {
          add(UpdateWaveEvent(event.decibels!, event.duration));
        }
      });

      emit(
        RecordingInProgress(0, Duration()),
      );
    } catch (e) {
      print("Failed to start recording: $e");
      emit(RecordingInitial());
    }
  }

  void _updateWave(UpdateWaveEvent event, Emitter<RecordState> emit) {
    if (state is RecordingInProgress) {
      emit(RecordingInProgress(event.decibels, event.duration));
    }
  }

  Future<void> _stopRecording(
      StopRecordingEvent event, Emitter<RecordState> emit) async {
    if (_recorder!.isRecording) {
      try {
        await _recorder.stopRecorder();
        print("Recording stopped");
      } catch (e) {
        print("Failed to stop recording: $e");
      }
    }
    emit(RecordingStopped());
  }

  @override
  Future<void> close() async {
    try {
      await _recorder!.closeRecorder();
      _isRecorderOpen = false; // Mark recorder as closed
    } catch (e) {
      print("Failed to close recorder: $e");
    }
    return super.close();
  }
}
