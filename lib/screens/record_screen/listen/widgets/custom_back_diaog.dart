import 'package:flutter/material.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/dialog_button.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/text_style.dart';

class CustomBackDialog {
  static Future<void> show(
    String title,
    String text,
    BuildContext context, {
    VoidCallback? onYes,
    VoidCallback? onNo,
  }) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: Padding(
          padding: const EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                title,
                style: AppTextStyles.titleRed,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              const SizedBox(height: 24.0),
              Text(
                textAlign: TextAlign.center,
                text,
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
