import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class DrawerElementsRow extends StatelessWidget {
  final String title;
  final SvgPicture icon;
  final Function() onTap;

  const DrawerElementsRow(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
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
          const SizedBox(
            height: 15.0,
          ),
        ],
      ),
    );
  }
}
