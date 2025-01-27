import 'package:flutter/material.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class OrangeGestureDetector extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const OrangeGestureDetector(
      {super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: AppColors.orangeColor,
            borderRadius: BorderRadius.circular(30)),
        height: 60,
        child: Center(
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
              fontFamily: 'TTNorms',
            ),
          ),
        ),
      ),
    );
  }
}
