import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc_event.freezed.dart';

@freezed
class AuthBlocEvent with _$AuthBlocEvent {
  const factory AuthBlocEvent.checkRequested() = CheckRequestedAuthBlocEvent;
  const factory AuthBlocEvent.logoutRequested() = LogoutRequestedAuthBlocEvent;
  const factory AuthBlocEvent.deleteUser() = DeleteUserAuthBlocEvent;
}
