import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class AddCollection extends StatelessWidget {
  const AddCollection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Создание',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36.0,
            fontWeight: FontWeight.w700,
            height: 1.5,
            letterSpacing: 3,
            fontFamily: 'TTNorms',
          ),
        ),
        toolbarHeight: 65,
        backgroundColor: AppColors.greenColor,
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
        actions: [
          GestureDetector(
            onTap: () => context.pop(),
            child: const Padding(
              padding: EdgeInsets.only(right: 10.0, top: 15.0),
              child: Text(
                'Готово',
                style: AppTextStyles.whiteTitle,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          const CustomProfileTopClipPath(
            backgroundColor: AppColors.greenColor,
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 24.0,
              left: 15.0,
              right: 15.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Название',
                  style: AppTextStyles.whiteBodyBold,
                ),
                const MaxGap(20.0),
                Container(
                  height: 240.0,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black.withOpacity(0.15),
                          offset: const Offset(0, 10),
                          blurRadius: 10,
                          spreadRadius: 1.0)
                    ],
                    color: Colors.white.withOpacity(0.9),
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/icons/Edit_Photo.svg',
                      colorFilter: const ColorFilter.mode(
                        AppColors.fontColor,
                        BlendMode.srcIn,
                      ),
                    ),
                  ),
                ),
                const MaxGap(20.0),
                const Text('Введите описание...'),
                Container(
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
                      hintStyle: AppTextStyles.body,
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 20.0,
                        vertical: 10.0,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Готово',
                      style: AppTextStyles.subtitle,
                    )
                  ],
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Container(
                          decoration: const BoxDecoration(
                            border: Border(
                              bottom: BorderSide(
                                width: 1.0,
                                color: AppColors.fontColor,
                              ),
                            ),
                          ),
                          child: GestureDetector(
                            onTap: () => context.go('/collection/add/choose'),
                            child: const Text(
                              'Добавить аудиофайл',
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
