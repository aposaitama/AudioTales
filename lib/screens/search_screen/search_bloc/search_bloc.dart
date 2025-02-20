import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc_event.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';

class SearchBloc extends Bloc<SearchBlocEvent, SearchBlocState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  StreamSubscription<List<AudioRecordsModel>>? _audioSubscription;
  final int _page = 1;

  SearchBloc() : super(const SearchBlocState()) {
    on<LoadingSearchBlocEvent>(_loading);
    on<LoadedSearchBlocEvent>(_loaded);
    on<SearchAudioRecordsEvent>(_search);
    _subscribeToAudioStream();
  }

  void _subscribeToAudioStream() {
    _audioSubscription =
        _firebaseFirestoreService.getUserAudiosStream(_page).listen(
      (audioList) {
        add(LoadedSearchBlocEvent(audioList));
      },
    );
  }

  Future<void> _loading(
    LoadingSearchBlocEvent event,
    Emitter<SearchBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        status: SearchBlocStatus.loading,
      ),
    );
  }

  Future<void> _loaded(
    LoadedSearchBlocEvent event,
    Emitter<SearchBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        status: SearchBlocStatus.loaded,
        audiosList: event.audioList,
        filteredAudiosList: event.audioList,
      ),
    );
  }

  Future<void> _search(
    SearchAudioRecordsEvent event,
    Emitter<SearchBlocState> emit,
  ) async {
    final query = event.query.toLowerCase();
    final filtered = state.audiosList.where((audio) {
      return audio.title.toLowerCase().contains(query);
    }).toList();

    emit(state.copyWith(filteredAudiosList: filtered));
  }

  @override
  Future<void> close() {
    _audioSubscription?.cancel();
    return super.close();
  }
}
