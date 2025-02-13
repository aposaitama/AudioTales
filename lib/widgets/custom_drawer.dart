import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/navigation/app_navigation.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/widgets/drawer_elements_row.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 291.0,
      backgroundColor: const Color(0xFFF6F6F6),
      child: Column(
        children: [
          DrawerHeader(
            child: Column(
              children: [
                const Text(
                  'Аудиосказки',
                  style: TextStyle(
                    color: AppColors.fontColor,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2,
                    fontFamily: 'TTNorms',
                  ),
                ),
                const SizedBox(
                  height: 40.0,
                ),
                Text(
                  'Меню',
                  style: TextStyle(
                    color: AppColors.fontColor.withOpacity(0.5),
                    fontSize: 22.0,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2,
                    fontFamily: 'TTNorms',
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.only(left: 35.0, right: 35.0, bottom: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      DrawerElementsRow(
                        title: 'Главная',
                        icon: SvgPicture.asset(
                          'assets/icons/Home.svg',
                        ),
                        onTap: () {
                          context.go('/home');
                        },
                      ),
                      DrawerElementsRow(
                        title: 'Профиль',
                        icon: SvgPicture.asset(
                          'assets/icons/Profile.svg',
                        ),
                        onTap: () {},
                      ),
                      DrawerElementsRow(
                        title: 'Подборки',
                        icon: SvgPicture.asset(
                          'assets/icons/Category.svg',
                        ),
                        onTap: () {
                          context.go('/collection');
                          context.pop();
                        },
                      ),
                      DrawerElementsRow(
                        title: 'Все аудиофайлы',
                        icon: SvgPicture.asset(
                          'assets/icons/Paper.svg',
                        ),
                        onTap: () {
                          context.go('/audio_records');
                        },
                      ),
                      DrawerElementsRow(
                        title: 'Поиск',
                        icon: SvgPicture.asset(
                          'assets/icons/Search.svg',
                        ),
                        onTap: () {
                          context.go('/search');
                        },
                      ),
                      DrawerElementsRow(
                        title: 'Недавно удаленные',
                        icon: SvgPicture.asset(
                          'assets/icons/Delete.svg',
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                  DrawerElementsRow(
                    title: 'Подписка',
                    icon: SvgPicture.asset(
                      'assets/icons/Paper.svg',
                    ),
                    onTap: () {},
                  ),
                  DrawerElementsRow(
                    title: 'Написать в поддержку ',
                    icon: SvgPicture.asset(
                      'assets/icons/Edit.svg',
                    ),
                    onTap: () {},
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
