import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/auth_screen/auth_gate_screen/bloc/auth_bloc.dart';
import 'package:memory_box_avada/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_event.dart';
import 'package:memory_box_avada/screens/auth_screen/auth_gate_screen/bloc/auth_bloc_state.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc_event.dart';

import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class ProfileScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const ProfileScreen({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Профиль\n',
            style: AppTextStyles.appBarText,
            children: <TextSpan>[
              TextSpan(
                text: 'Твоя частичка',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                  letterSpacing: 1,
                  fontFamily: 'TTNorms',
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 65,
        backgroundColor: AppColors.purpleColor,
        leading: Builder(
          builder: (context) => Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/drawer.svg',
                  height: 24.0,
                  width: 24.0,
                ),
              ),
              onPressed: () => scaffoldKey.currentState?.openDrawer(),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              const CustomProfileTopClipPath(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Container(
                    width: 228.0,
                    height: 228.0,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(24),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          offset: const Offset(0, 5),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 14.0,
          ),
          const Text(
            'Коля',
            style: TextStyle(
              color: AppColors.fontColor,
              fontSize: 24.0,
              fontWeight: FontWeight.w500,
              height: 1.0,
              letterSpacing: 1,
              fontFamily: 'TTNorms',
            ),
          ),
          const SizedBox(
            height: 24.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 62.0,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              offset: const Offset(0, 5),
                              blurRadius: 10,
                              spreadRadius: 1,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(41),
                          color: const Color.fromARGB(212, 255, 255, 255),
                        ),
                        child: const Center(
                          child: Text(
                            '+380 (55) 478 74 96',
                            style: TextStyle(
                              color: AppColors.fontColor,
                              fontSize: 20.0,
                              fontWeight: FontWeight.w500,
                              height: 1.0,
                              letterSpacing: 1,
                              fontFamily: 'TTNorms',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      GestureDetector(
                        onTap: () => context.go('/profile/edit'),
                        child: const Text(
                          'Редактировать',
                          style: TextStyle(
                            color: AppColors.fontColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            height: 1.0,
                            letterSpacing: 1,
                            fontFamily: 'TTNorms',
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 32.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlocBuilder<AuthBloc, AuthBlocState>(
                          builder: (context, state) {
                            return GestureDetector(
                              onTap: () {
                                context
                                    .read<AuthBloc>()
                                    .add(const LogoutRequestedAuthBlocEvent());
                                context
                                    .read<RegisterScreenBloc>()
                                    .add(const LogOutRegisterScreenBlocEvent());
                                context.go('/bypass');
                              },
                              child: const Text(
                                'Выйти из приложения',
                                style: AppTextStyles.subtitle,
                              ),
                            );
                          },
                        ),
                        const Text(
                          'Удалить аккаунт',
                          style: AppTextStyles.subtitleRed,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
