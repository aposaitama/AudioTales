import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/user_model.dart';

part 'user_bloc_state.freezed.dart';

@freezed
class UserBlocState with _$UserBlocState {
  const factory UserBlocState({
    @Default(
      UserModel(
        userId: '',
        phoneNumber: '',
        subscription: Subscription.initial,
        audiosCount: 0,
      ),
    )
    UserModel userModel,
  }) = _UserBlocState;
}
