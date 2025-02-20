import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_bloc_state.freezed.dart';

enum AuthGateStatus { initial, authenticated, unAuthenticated }

@freezed
class AuthBlocState with _$AuthBlocState {
  const factory AuthBlocState({
    @Default(AuthGateStatus.initial) AuthGateStatus gateStatus,
  }) = _AuthBlocState;
}
