import 'package:flutter/material.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class SplashTitle extends StatelessWidget {
  const SplashTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          30,
        ),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(
          vertical: 17.0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'MemoryBox',
              style: TextStyle(
                height: 1.0,
                fontSize: 30,
                letterSpacing: 1.6,
                color: AppColors.purpleColor,
                fontFamily: 'TTNorms',
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
