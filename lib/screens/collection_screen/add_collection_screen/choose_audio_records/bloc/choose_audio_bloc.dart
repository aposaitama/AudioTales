import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/collection_screen/add_collection_screen/choose_audio_records/bloc/choose_audio_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/add_collection_screen/choose_audio_records/bloc/choose_audio_bloc_state.dart';
import 'package:memory_box_avada/sources/auth_service.dart';
import 'package:memory_box_avada/sources/db_service.dart';

class ChooseAudioBloc extends Bloc<ChooseAudioBlocEvent, ChooseAudioBlocState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  final AuthService _authService = locator<AuthService>();
  StreamSubscription<List<AudioRecordsModel>>? _audioSubscription;

  StreamSubscription<bool>? _authSubscription;

  ChooseAudioBloc() : super(const ChooseAudioBlocState()) {
    on<SearchChooseAudioBlocEvent>(_search);
    on<LoadedChooseAudioBlocEvent>(_onLoadedSearchBlocEvent);
    on<LoadNextChooseAudioBlocEvent>(_loadNextPage);
    on<ClearChooseAudioBlocEvent>(_clearLList);
    // _subscribeToAudioStream();
    _subscribeToAuthChanges();
  }

  void _clearLList(
    ClearChooseAudioBlocEvent event,
    Emitter<ChooseAudioBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        audiosList: [],
        filteredAudiosCount: 0,
        filteredAudiosList: [],
      ),
    );
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

        add(const LoadedChooseAudioBlocEvent([]));
        add(const SearchChooseAudioBlocEvent(''));
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
    LoadNextChooseAudioBlocEvent event,
    Emitter<ChooseAudioBlocState> emit,
  ) async {
    final currentAudioList = state.audiosList;
    final searchStream = _firebaseFirestoreService.searchAudiosStream(
      audioList: currentAudioList,
      searchedText: event.query,
    );
    searchStream.listen((newAudioList) {
      final updatedList = List<AudioRecordsModel>.from(currentAudioList)
        ..addAll(newAudioList);
      add(LoadedChooseAudioBlocEvent(updatedList));
    });
  }

  Future<void> _search(
    SearchChooseAudioBlocEvent event,
    Emitter<ChooseAudioBlocState> emit,
  ) async {
    final query = event.query.trim();
    add(const ClearChooseAudioBlocEvent());
    await _audioSubscription?.cancel();

    // if (query.isEmpty) {
    //   add(
    //     const LoadedChooseAudioBlocEvent(
    //       [],
    //     ),
    //   );
    // }

    int audiosCount =
        await _firebaseFirestoreService.getAudioCount(searchedText: query);
    emit(state.copyWith(filteredAudiosCount: audiosCount));

    _audioSubscription = _firebaseFirestoreService
        .searchAudiosChooseStream(
      searchedText: query,
      audioList: state.audiosList,
    )
        .listen((audioList) {
      print(audioList);
      add(LoadedChooseAudioBlocEvent(audioList));
    });
  }

  void _onLoadedSearchBlocEvent(
    LoadedChooseAudioBlocEvent event,
    Emitter<ChooseAudioBlocState> emit,
  ) {
    emit(state.copyWith(audiosList: event.audioList));
  }

  @override
  Future<void> close() {
    _audioSubscription?.cancel();
    return super.close();
  }
}
