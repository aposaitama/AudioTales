import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_screen_bloc_event.freezed.dart';

@freezed
class RegisterScreenBlocEvent with _$RegisterScreenBlocEvent {
  const factory RegisterScreenBlocEvent.phoneNumberSubmitted(
    String phoneNumber,
  ) = PhoneSubmittedRegisterScreenBlocEvent;
  const factory RegisterScreenBlocEvent.verificationCodeSubmitted(
    String otpCode,
  ) = OTPSubmittedRegisterScreenBlocEvent;
  const factory RegisterScreenBlocEvent.loginAnonymous() =
      AnonymousRegisterScreenBlocEvent;
  const factory RegisterScreenBlocEvent.logOut() =
      LogOutRegisterScreenBlocEvent;
}
