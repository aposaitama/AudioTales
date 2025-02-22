import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/utils/duration_converter.dart';

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
    @DurationConverter() required Duration duration,
    String? userName,
    String? userPhoto,
    required int audiosCount,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
