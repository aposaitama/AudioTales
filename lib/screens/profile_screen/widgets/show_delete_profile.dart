import 'package:flutter/material.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/dialog_button.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/delete_button.dart';
import 'package:memory_box_avada/style/textStyle/text_style.dart';

class ShowDeleteProfile {
  static Future<void> show(
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
              const Text(
                'Точно удалить аккаунт?',
                style: AppTextStyles.blackBodyTile,
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
                  onYes?.call();
                },
                child: const CustomDeleteButton(),
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
