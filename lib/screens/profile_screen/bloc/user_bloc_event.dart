import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/user_model.dart';

part 'user_bloc_event.freezed.dart';

@freezed
class UserBlocEvent with _$UserBlocEvent {
  const factory UserBlocEvent.initial() = InitialUserBlocEvent;
  const factory UserBlocEvent.loading(String id) = LoadingUserBlocEvent;
  const factory UserBlocEvent.loaded(UserModel userModel) = LoadedUserBlocEvent;
}
