import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';
import 'dialogButton.dart';

class DeleteConfirmationDialog extends StatelessWidget {
  final VoidCallback onConfirm;

  const DeleteConfirmationDialog({super.key, required this.onConfirm});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
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
            SizedBox(
              height: 24.0,
            ),
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
                Navigator.of(context).pop();
                onConfirm();
              },
              child: const Dialogbutton(
                text: 'Да',
                backgroundColor: AppColors.purpleColor,
              ),
            ),
            const SizedBox(width: 10.0),
            GestureDetector(
              onTap: () => Navigator.of(context).pop(),
              child: const Dialogbutton(text: 'Нет'),
            ),
          ],
        ),
      ],
    );
  }
}
