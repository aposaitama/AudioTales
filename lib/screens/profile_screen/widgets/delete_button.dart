import 'package:flutter/material.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class CustomDeleteButton extends StatelessWidget {
  const CustomDeleteButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 124.0,
      height: 41.0,
      decoration: BoxDecoration(
        color: AppColors.redColor,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Center(
        child: Text(
          'Удалить',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
