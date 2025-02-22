import 'package:flutter/material.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class DialogButtonOtp extends StatelessWidget {
  final String text;

  const DialogButtonOtp({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 41.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(color: AppColors.purpleColor, width: 2.0),
      ),
      child: Center(
        child: Text(text),
      ),
    );
  }
}
