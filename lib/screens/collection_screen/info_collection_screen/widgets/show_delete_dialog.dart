import 'package:flutter/material.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/dialogButton.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class ShowDeleteDialog {
  static Future<void> show(
    BuildContext context, {
    VoidCallback? onYes,
    VoidCallback? onNo,
  }) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Padding(
          padding: EdgeInsets.only(top: 50.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'Подтверждаете удаление?',
                style: AppTextStyles.titleRed,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              SizedBox(height: 24.0),
              Text(
                textAlign: TextAlign.center,
                'Ваш файл перенесется в папку “Недавно удаленные”. Через 15 дней он исчезнет.',
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
                  onYes?.call();
                },
                child: const Dialogbutton(
                  text: 'Да',
                  backgroundColor: AppColors.purpleColor,
                ),
              ),
              const SizedBox(width: 10.0),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                  onNo?.call();
                },
                child: const Dialogbutton(
                  text: 'Нет',
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
