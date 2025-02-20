import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

enum Subscription {
  @JsonValue('initial')
  initial,
  @JsonValue('monthly')
  monthly,
  @JsonValue('yearly')
  yearly,
}

@freezed
class UserModel with _$UserModel {
  const factory UserModel({
    required String userId,
    required String phoneNumber,
    required Subscription subscription,
    String? userName,
    String? userPhoto,
    required int audiosCount,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
