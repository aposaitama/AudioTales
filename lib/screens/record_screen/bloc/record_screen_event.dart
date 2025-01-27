import 'package:equatable/equatable.dart';

// abstract class RecordEvent extends Equatable {
//   @override
//   List<Object?> get props => [];
// }

// class StartRecordingEvent extends RecordEvent {}

// class ListeninginProgressEvent extends RecordEvent {}

// class ListeninginPausedEvent extends RecordEvent {}

// class ListeninginStoppedEvent extends RecordEvent {}

// class UpdateWaveEvent extends RecordEvent {
//   final List<double> waveData; // Дані хвилі

//   UpdateWaveEvent(this.waveData);

//   @override
//   List<Object?> get props => [waveData];
// }

// class UpdateDecibelEvent extends RecordEvent {
//   final double decibel;
//   UpdateDecibelEvent(this.decibel);
// }

abstract class RecordEvent {}

class StartRecordingEvent extends RecordEvent {}

class UpdateWaveEvent extends RecordEvent {
  final double decibels;
  final Duration duration;
  UpdateWaveEvent(this.decibels, this.duration);
}

class StopRecordingEvent extends RecordEvent {}
