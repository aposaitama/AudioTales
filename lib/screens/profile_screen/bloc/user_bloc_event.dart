import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/user_model.dart';

part 'user_bloc_event.freezed.dart';

@freezed
class UserBlocEvent with _$UserBlocEvent {
  const factory UserBlocEvent.subscribeToAuthChanges() = SubscribeToAuthChanges;
  const factory UserBlocEvent.userUpdated(UserModel userModel) = UserUpdated;
  const factory UserBlocEvent.userLoggedOut() = UserLoggedOut;
  const factory UserBlocEvent.editMode() = UserEditMode;
  const factory UserBlocEvent.sendCode(String newUserPhone) =
      SendCodeUserBlocEvent;
  const factory UserBlocEvent.sendOTP(String otpCode) = SendOTPUserBlocEvent;
  const factory UserBlocEvent.choosePhoto() = ChoosePhotoEventUserBoc;
  const factory UserBlocEvent.saveInfo(
    String userName,
    String userPhone,
  ) = SaveInfoEventUserBoc;
}
