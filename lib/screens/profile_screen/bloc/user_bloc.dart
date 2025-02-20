import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc_event.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc_state.dart';
import 'package:memory_box_avada/sources/db_service.dart';

class UserBloc extends Bloc<UserBlocEvent, UserBlocState> {
  final FirestoreService _firebaseFirestoreService =
      locator<FirestoreService>();
  UserBloc() : super(UserBlocState()) {}
}
