import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/user_model.dart';

part 'subscription_bloc_state.freezed.dart';

@freezed
class SubscriptionBlocState with _$SubscriptionBlocState {
  const factory SubscriptionBlocState({
    @Default(Subscription.initial) Subscription subscriptionType,
  }) = _SubscriptionBlocState;
}
