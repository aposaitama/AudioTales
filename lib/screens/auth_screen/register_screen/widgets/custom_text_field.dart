import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class CustomTextField extends StatelessWidget {
  final MaskTextInputFormatter maskFormatted;
  final TextEditingController? controller;
  const CustomTextField(
      {super.key, required this.maskFormatted, this.controller,});

  @override
  Widget build(BuildContext context) {
    return Material(
        borderRadius: BorderRadius.circular(30.0),
        elevation: 5.0,
        child: SizedBox(
          height: 60.0,
          child: TextField(
            textAlign: TextAlign.center,
            inputFormatters: [maskFormatted],
            decoration: InputDecoration(
              hintText: '${maskFormatted.getMask()}',
              hintStyle: const TextStyle(
                color: AppColors.fontColor,
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
                fontFamily: 'TTNorms',
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 15.0,
              ),
              border: const OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),);
  }
}
