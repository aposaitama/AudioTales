import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/style/textStyle/text_style.dart';

class SubscriptionBenefitsTile extends StatelessWidget {
  final String title;
  final String imgPath;
  const SubscriptionBenefitsTile({
    super.key,
    required this.title,
    required this.imgPath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SvgPicture.asset(imgPath),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          child: Text(
            title,
            style: AppTextStyles.subtitle,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
