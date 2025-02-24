import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/screens/subscription_screen/bloc/subscription_bloc_event.dart';
import 'package:memory_box_avada/screens/subscription_screen/bloc/subscription_bloc_state.dart';

class SubscriptionBloc
    extends Bloc<SubscriptionBlocEvent, SubscriptionBlocState> {
  SubscriptionBloc() : super(const SubscriptionBlocState()) {
    on<SubscriptionSelected>(_selectTariff);
  }

  void _selectTariff(
    SubscriptionSelected event,
    Emitter<SubscriptionBlocState> emit,
  ) {
    emit(state.copyWith(subscriptionType: event.subscriptionType));
  }
}
