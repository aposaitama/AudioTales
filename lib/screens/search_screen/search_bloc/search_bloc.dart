import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc_event.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc_state.dart';
import 'package:memory_box_avada/sources/auth_service.dart';
import 'package:memory_box_avada/sources/db_service.dart';

class SearchBloc extends Bloc<SearchBlocEvent, SearchBlocState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  final AuthService _authService = locator<AuthService>();
  StreamSubscription<List<AudioRecordsModel>>? _audioSubscription;
  StreamSubscription<bool>? _authSubscription;

  SearchBloc() : super(const SearchBlocState()) {
    on<SearchAudioRecordsEvent>(_search);
    on<LoadedSearchBlocEvent>(_onLoadedSearchBlocEvent);
    // _subscribeToAudioStream();
    _subscribeToAuthChanges();
  }

  // void _subscribeToAudioStream() {
  //   _audioSubscription = _firebaseFirestoreService.searchAudiosStream().listen(
  //     (audioList) {
  //       add(LoadedSearchBlocEvent(audioList));
  //     },
  //   );
  // }

  void _subscribeToAuthChanges() {
    _authSubscription?.cancel();

    _authSubscription = _authService.authStatusChanges.listen((isAuthorized) {
      if (isAuthorized) {
        // _subscribeToAudioStream();
      } else {
        _audioSubscription?.cancel();
      }
    });
  }

  // Future<void> _search(
  //   SearchAudioRecordsEvent event,
  //   Emitter<SearchBlocState> emit,
  // ) async {

  //   final query = event.query.toLowerCase();
  //   final filtered = state.audiosList.where((audio) {
  //     return audio.title.toLowerCase().contains(query);
  //   }).toList();

  //   emit(state.copyWith(filteredAudiosList: filtered));
  // }

  Future<void> _search(
    SearchAudioRecordsEvent event,
    Emitter<SearchBlocState> emit,
  ) async {
    final query = event.query.trim();
    print(query);

    await _audioSubscription?.cancel();

    if (query.isEmpty) {
      add(
        const LoadedSearchBlocEvent(
          [],
        ),
      );
    }

    _audioSubscription = _firebaseFirestoreService
        .searchAudiosStream(searchedText: query)
        .listen((audioList) {
      add(LoadedSearchBlocEvent(audioList));
    });
  }

  void _onLoadedSearchBlocEvent(
    LoadedSearchBlocEvent event,
    Emitter<SearchBlocState> emit,
  ) {
    emit(state.copyWith(audiosList: event.audioList));
  }

  @override
  Future<void> close() {
    _audioSubscription?.cancel();
    return super.close();
  }
}
