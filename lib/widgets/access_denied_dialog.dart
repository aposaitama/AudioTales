import 'package:flutter/material.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/dialog_button.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/text_style.dart';

class AccessDeniedDialog {
  static Future<void> show(
    BuildContext context,
  ) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Доступ заборонено',
                style: AppTextStyles.titleRed,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              SizedBox(height: 24.0),
              Text(
                textAlign: TextAlign.center,
                'Будь ласка, зареєструйтеся, щоб отримати доступ до цієї сторінки.',
                style: AppTextStyles.subtitleTall,
              ),
            ],
          ),
        ),
        actions: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Dialogbutton(
                  text: 'Назад',
                  backgroundColor: AppColors.purpleColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
