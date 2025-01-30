import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_event.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_state.dart';

class RecordStatusBloc extends Bloc<RecordStatusEvent, RecordStatusState> {
  RecordStatusBloc() : super(const RecordStatusState()) {
    on<RecordingRecordStatusEvent>(_recording);
    on<ListeningRecordStatusEvent>(_listening);
  }

  void _recording(
    RecordingRecordStatusEvent event,
    Emitter<RecordStatusState> emit,
  ) {
    emit(state.copyWith(status: RecordCommonStatus.record));
  }

  void _listening(
    ListeningRecordStatusEvent event,
    Emitter<RecordStatusState> emit,
  ) {
    emit(state.copyWith(status: RecordCommonStatus.listen));
  }
}
