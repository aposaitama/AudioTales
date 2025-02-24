import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_event.dart';
import 'package:memory_box_avada/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AuthBloc extends Bloc<AuthBlocEvent, AuthBlocState> {
  final FirebaseAuth _auth = locator<FirebaseAuth>();
  StreamSubscription<User?>? _authSubscription;
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  AuthBloc() : super(const AuthBlocState()) {
    on<CheckRequestedAuthBlocEvent>(
      _checkRequested,
    );
    on<DeleteUserAuthBlocEvent>(_deleteUser);
    on<LogoutRequestedAuthBlocEvent>(
      _logoutRequested,
    );

    _authSubscription = _auth.authStateChanges().listen((user) {
      add(
        const AuthBlocEvent.checkRequested(),
      );
    });
  }

  Future<void> _deleteUser(
    DeleteUserAuthBlocEvent event,
    Emitter<AuthBlocState> emit,
  ) async {
    await _firebaseFirestoreService.deleteUserDocument();
    await _auth.currentUser!.delete();
    emit(
      state.copyWith(
        gateStatus: AuthGateStatus.unAuthenticated,
      ),
    );
  }

  Future<void> _checkRequested(
    CheckRequestedAuthBlocEvent event,
    Emitter<AuthBlocState> emit,
  ) async {
    final user = _auth.currentUser;

    if (user != null) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('uid', user.uid);

      emit(state.copyWith(gateStatus: AuthGateStatus.authenticated));
    } else {
      emit(state.copyWith(gateStatus: AuthGateStatus.unAuthenticated));
    }
  }

  Future<void> _logoutRequested(
    LogoutRequestedAuthBlocEvent event,
    Emitter<AuthBlocState> emit,
  ) async {
    await _auth.signOut();
    emit(
      state.copyWith(
        gateStatus: AuthGateStatus.unAuthenticated,
      ),
    );
  }

  @override
  Future<void> close() {
    _authSubscription?.cancel();
    return super.close();
  }
}
