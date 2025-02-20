import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_screen_bloc_state.freezed.dart';

enum RegisterStatus { initial, successfull, failed }

enum RegisterCodeSentStatus { initial, successfull, failed }

@freezed
class RegisterScreenBlocState with _$RegisterScreenBlocState {
  const factory RegisterScreenBlocState({
    @Default(RegisterStatus.initial) RegisterStatus status,
    @Default(RegisterCodeSentStatus.initial) RegisterCodeSentStatus codeStatus,
    @Default('') String verigicationId,
    @Default('') String phoneNumber,
    @Default(true) bool isAnonymous,
  }) = _RegisterScreenBlocState;
}
