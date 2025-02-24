import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:memory_box_avada/screens/subscription_screen/widget/subscription_benefits_tile.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class SubscriptionBenefits extends StatelessWidget {
  const SubscriptionBenefits({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Что дает подписка:',
          style: AppTextStyles.blackBodyTile,
        ),
        Gap(24),
        SubscriptionBenefitsTile(
          title: 'Неограниченая память',
          imgPath: 'assets/icons/cil_infinity.svg',
        ),
        Gap(10),
        SubscriptionBenefitsTile(
          title: 'Все файлы хранятся в облаке',
          imgPath: 'assets/icons/cil_cloud-upload.svg',
        ),
        Gap(10),
        SubscriptionBenefitsTile(
          title: 'Возможность скачивать без ограничений',
          imgPath: 'assets/icons/paper_downoad.svg',
        ),
        // Gap(39),
      ],
    );
  }
}
