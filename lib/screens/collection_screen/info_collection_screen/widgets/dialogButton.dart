import 'package:flutter/material.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class Dialogbutton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  const Dialogbutton({super.key, required this.text, this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 84.0,
      height: 41.0,
      decoration: BoxDecoration(
        color: backgroundColor ?? Colors.transparent,
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.purpleColor, width: 2.0),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
