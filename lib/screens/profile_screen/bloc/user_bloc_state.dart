import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/user_model.dart';

part 'user_bloc_state.freezed.dart';

enum UserCodeSentStatus { initial, successfull, failed }

@freezed
class UserBlocState with _$UserBlocState {
  const factory UserBlocState({
    @Default(false) bool isLoading,
    @Default(false) bool editingMode,
    @Default('') String newUserImagePath,
    UserModel? userModel,
    @Default(UserCodeSentStatus.initial) UserCodeSentStatus codeStatus,
    @Default('') String verigicationId,
    @Default('') String newUserPhoneNum,
  }) = _UserBlocState;
}
