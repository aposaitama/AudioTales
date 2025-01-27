import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/auth_screen/widgets/custom_top_clip_path.dart';
import 'package:memory_box_avada/screens/welcome_screen/widgets/orange_gesture_detector.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class WelcomeScreenNewUser extends StatelessWidget {
  const WelcomeScreenNewUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomTopClipPath(
            title: 'MemoryBox',
            subTitle: 'Твой голос всегда рядом',
          ),
          const SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
            child: Center(
              child: Column(
                children: [
                  const Text(
                    'Привет!',
                    style: TextStyle(
                      color: AppColors.fontColor,
                      fontSize: 24.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 2.0,
                      height: 1.0,
                      fontFamily: 'TTNorms',
                    ),
                  ),
                  const SizedBox(
                    height: 24.0,
                  ),
                  const Text(
                    textAlign: TextAlign.center,
                    'Мы рады видеть тебя здесь. \nЭто приложение поможет записывать сказки и держать их в удобном месте не заполняя память на телефоне',
                    style: TextStyle(
                      color: AppColors.fontColor,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w300,
                      height: 1.0,
                      fontFamily: 'TTNorms',
                    ),
                  ),
                  const SizedBox(
                    height: 48.0,
                  ),
                  OrangeGestureDetector(
                    text: 'Продолжить',
                    onTap: () => context.go('/register_num'),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
