import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/widgets/access_denied_dialog.dart';
import 'package:memory_box_avada/widgets/drawer_elements_row.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final isAnonymous = locator<FirebaseAuth>().currentUser?.isAnonymous;

    void navigateOrDenied(String route, [int index = -1]) {
      if (isAnonymous! && (route != '/profile' && route != '/home')) {
        AccessDeniedDialog.show(context);
      } else {
        context.pop();

        context.read<NavigationCubit>().navigateTo(index);

        context.go(route);
      }
    }

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
                ),
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
                          navigateOrDenied('/home', 0);
                        },
                      ),
                      DrawerElementsRow(
                        title: 'Профиль',
                        icon: SvgPicture.asset(
                          'assets/icons/Profile.svg',
                        ),
                        onTap: () {
                          navigateOrDenied('/profile', 4);
                        },
                      ),
                      DrawerElementsRow(
                        title: 'Подборки',
                        icon: SvgPicture.asset(
                          'assets/icons/Category.svg',
                        ),
                        onTap: () {
                          navigateOrDenied('/collection', 1);
                        },
                      ),
                      DrawerElementsRow(
                        title: 'Все аудиофайлы',
                        icon: SvgPicture.asset(
                          'assets/icons/Paper.svg',
                        ),
                        onTap: () {
                          navigateOrDenied('/audio_records', 3);
                        },
                      ),
                      DrawerElementsRow(
                        title: 'Поиск',
                        icon: SvgPicture.asset(
                          'assets/icons/Search.svg',
                        ),
                        onTap: () {
                          navigateOrDenied(
                            '/search',
                            -1,
                          );
                        },
                      ),
                      DrawerElementsRow(
                        title: 'Недавно удаленные',
                        icon: SvgPicture.asset(
                          'assets/icons/Delete.svg',
                        ),
                        onTap: () {
                          navigateOrDenied(
                            '/deleted',
                            -1,
                          );
                        },
                      ),
                    ],
                  ),
                  DrawerElementsRow(
                    title: 'Подписка',
                    icon: SvgPicture.asset(
                      'assets/icons/Paper.svg',
                    ),
                    onTap: () {
                      navigateOrDenied(
                        '/subscription',
                      );
                    },
                  ),
                  DrawerElementsRow(
                    title: 'Написать в поддержку ',
                    icon: SvgPicture.asset(
                      'assets/icons/Edit.svg',
                    ),
                    onTap: () {
                      context.pop();
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
