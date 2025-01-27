import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class DrawerElementsRow extends StatelessWidget {
  final String title;
  final SvgPicture icon;
  const DrawerElementsRow({super.key, required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            icon,
            const SizedBox(
              width: 10.0,
            ),
            Expanded(
              child: Text(
                title,
                style: const TextStyle(
                  color: AppColors.fontColor,
                  fontSize: 18.0,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'TTNorms',
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 15.0,
        ),
      ],
    );
  }
}
