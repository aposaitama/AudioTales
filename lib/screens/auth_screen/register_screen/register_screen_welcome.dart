import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/auth_screen/widgets/custom_top_clip_path.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class RegisterScreenWelcome extends StatefulWidget {
  const RegisterScreenWelcome({super.key});

  @override
  State<RegisterScreenWelcome> createState() => _RegisterScreenWelcomeState();
}

class _RegisterScreenWelcomeState extends State<RegisterScreenWelcome> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 1),
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
            title: 'Ты супер!',
          ),
          const SizedBox(
            height: 50.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 45.0),
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
                      padding: EdgeInsets.all(21.0),
                      child: Text(
                        textAlign: TextAlign.center,
                        'Мы рады тебя видеть',
                        style: TextStyle(
                          color: AppColors.fontColor,
                          fontSize: 23.0,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'TTNorms',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 51.0,
                  ),
                  SvgPicture.asset('assets/icons/Heart.svg'),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
