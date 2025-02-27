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
    on<LoadNextSearchEvent>(_loadNextPage);
    on<ClearSearchBlocEvent>(_clearLList);
    // _subscribeToAudioStream();
    _subscribeToAuthChanges();
  }

  void _clearLList(
    ClearSearchBlocEvent event,
    Emitter<SearchBlocState> emit,
  ) async {
    emit(state.copyWith(
        audiosList: [], filteredAudiosCount: 0, filteredAudiosList: []));
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

        add(LoadedSearchBlocEvent([]));
        add(SearchAudioRecordsEvent(''));
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

  Future<void> _loadNextPage(
    LoadNextSearchEvent event,
    Emitter<SearchBlocState> emit,
  ) async {
    final currentAudioList = state.audiosList;
    final searchStream = _firebaseFirestoreService.searchAudiosStream(
        audioList: currentAudioList, searchedText: event.query);
    searchStream.listen((newAudioList) {
      final updatedList = List<AudioRecordsModel>.from(currentAudioList)
        ..addAll(newAudioList);
      add(LoadedSearchBlocEvent(updatedList));
    });
  }

  Future<void> _search(
    SearchAudioRecordsEvent event,
    Emitter<SearchBlocState> emit,
  ) async {
    final query = event.query.trim();
    add(const ClearSearchBlocEvent());
    await _audioSubscription?.cancel();

    if (query.isEmpty) {
      add(
        const LoadedSearchBlocEvent(
          [],
        ),
      );
    }

    int audiosCount =
        await _firebaseFirestoreService.getAudioCount(searchedText: query);
    emit(state.copyWith(filteredAudiosCount: audiosCount));
    print(audiosCount);
    _audioSubscription = _firebaseFirestoreService
        .searchAudiosStream(searchedText: query, audioList: state.audiosList)
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
