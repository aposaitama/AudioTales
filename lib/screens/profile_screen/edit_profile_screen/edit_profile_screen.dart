import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/widgets/custom_text_field.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class EditProfileScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const EditProfileScreen({super.key, required this.scaffoldKey});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Профиль\n',
            style: AppTextStyles.appBarText,
            children: <TextSpan>[
              TextSpan(
                text: 'Твоя частичка',
                style: AppTextStyles.appBarSubText,
              ),
            ],
          ),
        ),
        toolbarHeight: 65,
        backgroundColor: AppColors.purpleColor,
        leadingWidth: 75.0,
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  iconSize: 36.0,
                  icon: SvgPicture.asset(
                    'assets/icons/Arrow_Left_Circle.svg',
                    height: 36.0,
                    width: 36.0,
                  ),
                  onPressed: () => context.pop(),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              const CustomProfileTopClipPath(),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(top: 24.0),
                  child: Container(
                    width: 228.0,
                    height: 228.0,
                    decoration: BoxDecoration(
                      color: Colors.brown,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/icons/Edit_Photo.svg',
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 45.0,
          ),
          Container(
            width: 200,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 1.0,
                  color: AppColors.fontColor.withOpacity(0.3),
                ),
              ),
            ),
            child: const TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                hintText: 'Коля',
                hintStyle: AppTextStyles.body,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 20.0,
                  vertical: 15.0,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 80.0,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      CustomTextField(
                        maskFormatted: MaskTextInputFormatter(
                          mask: '+380 (__) ___ __ __',
                          filter: {
                            "_": RegExp(r'[0-9]'),
                          },
                          type: MaskAutoCompletionType.lazy,
                        ),
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      GestureDetector(
                        onTap: () => context.pop(),
                        child: const Text(
                          'Сохранить',
                          style: AppTextStyles.subtitle,
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
