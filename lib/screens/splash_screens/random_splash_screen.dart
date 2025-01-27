import 'dart:math';

import 'package:flutter/material.dart';
import 'package:memory_box_avada/screens/splash_screens/first_splash_screen.dart';
import 'package:memory_box_avada/screens/splash_screens/second_splash_screen.dart';
import 'package:memory_box_avada/screens/splash_screens/third_splash_screen.dart';

class RandomSplashScreen extends StatelessWidget {
  const RandomSplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Widget> splashScreens = [
      const FirstSplashScreen(),
      const SecondSplashScreen(),
      const ThirdSplashScreen(),
    ];
    final randomIndex = Random().nextInt(splashScreens.length);
    return splashScreens[randomIndex];
  }
}
