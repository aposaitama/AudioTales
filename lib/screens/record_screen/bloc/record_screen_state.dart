// import 'package:equatable/equatable.dart';

// abstract class RecordState extends Equatable {
//   @override
//   List<Object?> get props => [];
// }

// class RecordingInitial extends RecordState {}

// class RecordingInProgress extends RecordState {}

// class ListeninginProgress extends RecordState {}

// class ListeninginPaused extends RecordState {}

// class ListeninginStopped extends RecordState {}

// class WaveUpdated extends RecordState {
//   final List<double> waveData; // Дані хвилі

//   WaveUpdated(this.waveData);

//   @override
//   List<Object?> get props => [waveData];
// }

// class DecibelUpdatedState extends RecordState {
//   final double decibel;
//   DecibelUpdatedState(this.decibel);
// }

abstract class RecordState {}

class RecordingInitial extends RecordState {}

class RecordingInProgress extends RecordState {
  final double decibels;
  final Duration duration;
  RecordingInProgress(
    this.decibels,
    this.duration,
  );
}

class RecordingStopped extends RecordState {}
