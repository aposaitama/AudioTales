import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc_event.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';

class RegisterScreenBloc
    extends Bloc<RegisterScreenBlocEvent, RegisterScreenBlocState> {
  final FirebaseAuth _auth = locator<FirebaseAuth>();
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();

  RegisterScreenBloc() : super(const RegisterScreenBlocState()) {
    on<PhoneSubmittedRegisterScreenBlocEvent>(_phoneSubmitted);
    on<OTPSubmittedRegisterScreenBlocEvent>(_otpSubmitted);
    on<AnonymousRegisterScreenBlocEvent>(_enterAnonymous);
    on<LogOutRegisterScreenBlocEvent>(_logOut);
  }

  Future<void> _logOut(
    LogOutRegisterScreenBlocEvent event,
    Emitter<RegisterScreenBlocState> emit,
  ) async {
    emit(
      state.copyWith(
        verigicationId: '',
        status: RegisterStatus.initial,
        codeStatus: RegisterCodeSentStatus.initial,
        phoneNumber: '',
        isAnonymous: true,
      ),
    );
  }

  Future<void> _enterAnonymous(
    AnonymousRegisterScreenBlocEvent event,
    Emitter<RegisterScreenBlocState> emit,
  ) async {
    await FirebaseAuth.instance.signInAnonymously();
  }

  Future<void> _phoneSubmitted(
    PhoneSubmittedRegisterScreenBlocEvent event,
    Emitter<RegisterScreenBlocState> emit,
  ) async {
    final completer = Completer<void>();

    await _auth.verifyPhoneNumber(
      phoneNumber: event.phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) {
        if (!completer.isCompleted) completer.complete();
      },
      verificationFailed: (FirebaseAuthException e) {
        if (!completer.isCompleted) completer.complete();
      },
      codeSent: (verificationId, forceResendingToken) {
        if (!completer.isCompleted) completer.complete();
        if (!emit.isDone) {
          emit(
            state.copyWith(
              codeStatus: RegisterCodeSentStatus.successfull,
              verigicationId: verificationId,
              phoneNumber: event.phoneNumber,
            ),
          );
        }
      },
      codeAutoRetrievalTimeout: (verificationId) {
        print('retrieval');
        if (!completer.isCompleted) completer.complete();
      },
    );

    await completer.future;
  }

  Future<void> _otpSubmitted(
    OTPSubmittedRegisterScreenBlocEvent event,
    Emitter<RegisterScreenBlocState> emit,
  ) async {
    PhoneAuthCredential credential = PhoneAuthProvider.credential(
      verificationId: state.verigicationId,
      smsCode: event.otpCode,
    );
    try {
      UserCredential userCredential =
          await _auth.signInWithCredential(credential);
      User? user = userCredential.user;

      if (user != null) {
        await _firebaseFirestoreService.createUser(user.uid, state.phoneNumber);
        emit(
          state.copyWith(
            status: RegisterStatus.successfull,
            isAnonymous: false,
          ),
        );
      }

      // await _auth.signInWithCredential(credential).then((value) {

      //   );
      // });
    } catch (e) {
      print(e);
    }
    // context.go('/register_welcome')
  }
}
