import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/auth_screen/widgets/custom_top_clip_path.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class WelcomeScreenExistingUser extends StatefulWidget {
  const WelcomeScreenExistingUser({super.key});

  @override
  State<WelcomeScreenExistingUser> createState() =>
      _WelcomeScreenExistingUserState();
}

class _WelcomeScreenExistingUserState extends State<WelcomeScreenExistingUser> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 2),
      () async {
        context.go('/home');
      },
    );
  }

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
            height: 78.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 55.0),
            child: Center(
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 10),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            textAlign: TextAlign.center,
                            'Мы рады тебя видеть',
                            style: TextStyle(
                              color: AppColors.fontColor,
                              fontSize: 23.0,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'TTNorms',
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 51.0,
                  ),
                  SvgPicture.asset('assets/icons/Heart.svg'),
                  const SizedBox(
                    height: 103,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          offset: const Offset(0, 10),
                          blurRadius: 10,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(25.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Взрослые иногда нуждаются в сказке даже больше, чем дети',
                        style: TextStyle(
                          color: AppColors.fontColor,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w300,
                          fontFamily: 'TTNorms',
                        ),
                      ),
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
