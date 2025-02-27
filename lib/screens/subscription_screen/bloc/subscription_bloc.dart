import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/screens/subscription_screen/bloc/subscription_bloc_event.dart';
import 'package:memory_box_avada/screens/subscription_screen/bloc/subscription_bloc_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';

class SubscriptionBloc
    extends Bloc<SubscriptionBlocEvent, SubscriptionBlocState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  SubscriptionBloc() : super(const SubscriptionBlocState()) {
    on<SubscriptionSelected>(_selectTariff);
    on<SubscriptionUpdate>(_updateSubscription);
  }

  void _selectTariff(
    SubscriptionSelected event,
    Emitter<SubscriptionBlocState> emit,
  ) {
    emit(state.copyWith(subscriptionType: event.subscriptionType));
  }

  Future<void> _updateSubscription(
    SubscriptionUpdate event,
    Emitter<SubscriptionBlocState> emit,
  ) async {
    await _firebaseFirestoreService
        .updateUserSubscription(state.subscriptionType);
  }
}
