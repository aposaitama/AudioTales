import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/screens/auth_screen/auth_gate_screen/bloc/auth_bloc.dart';
import 'package:memory_box_avada/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_state.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/register_screen_enter_num.dart';
import 'package:memory_box_avada/screens/welcome_screen/welcome_screen_existing_user.dart';

class BypassScreen extends StatelessWidget {
  const BypassScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthBlocState>(
      builder: (context, state) {
        switch (state.gateStatus) {
          case AuthGateStatus.authenticated:
            return const WelcomeScreenExistingUser();
          case AuthGateStatus.unAuthenticated:
            return const RegisterScreenEnterNum();
          case AuthGateStatus.initial:
          default:
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
        }
      },
    );
  }
}
