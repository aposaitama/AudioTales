import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:memory_box_avada/models/user_model.dart';

part 'subscription_bloc_event.freezed.dart';

@freezed
class SubscriptionBlocEvent with _$SubscriptionBlocEvent {
  const factory SubscriptionBlocEvent.subscriptionSelected(
    Subscription subscriptionType,
  ) = SubscriptionSelected;
}
