import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc_state.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/dialogButton.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_event.dart';

import 'package:memory_box_avada/screens/record_screen/record_screen.dart';

import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class CustomBottomNavBar extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const CustomBottomNavBar({super.key, required this.scaffoldKey});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

Widget _buildSvgIcon(
  String currentRoute,
  String routeName,
  String inactivePath,
  String activePath,
) {
  return SvgPicture.asset(
    currentRoute == routeName ? activePath : inactivePath,
    colorFilter: (currentRoute == routeName && currentRoute != '/record')
        ? const ColorFilter.mode(AppColors.purpleColor, BlendMode.srcIn)
        : null,
  );
}

String _getRouteFromIndex(int currentIndex) {
  switch (currentIndex) {
    case 0:
      return '/home';
    case 1:
      return '/collection';
    case 2:
      return '/record';
    case 3:
      return '/audio_records';
    case 4:
      return '/profile';
    default:
      return '/home';
  }
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final isAnonymous = locator<FirebaseAuth>().currentUser?.isAnonymous;

  bool isBottomSheetOpen = false;

  void _onTap(index) {
    final restrictedRoutes = [1, 3];
    if (isAnonymous! && restrictedRoutes.contains(index)) {
      _showAccessDeniedDialog();
      return;
    }

    context.read<NavigationCubit>().navigateTo(index);

    switch (index) {
      case 0:
        context.go('/home');
        break;
      case 1:
        context.go('/collection');
        break;
      case 2:
        context
            .read<RecordStatusBloc>()
            .add(const RecordingRecordStatusEvent());
        showBottomSheet(
          context: context,
          builder: (context) {
            return const RecordScreen();
          },
        );
        setState(
          () {
            isBottomSheetOpen = true;
          },
        );

        break;
      case 3:
        context.go('/audio_records');
        break;
      case 4:
        context.go('/profile');
        break;
    }
  }

  void _showAccessDeniedDialog() {
    showDialog(
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

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        final currentRoute = _getRouteFromIndex(state.currentIndex);

        return BottomNavigationBar(
          currentIndex: state.currentIndex,
          onTap: _onTap,
          selectedItemColor: AppColors.purpleColor,
          unselectedItemColor: AppColors.fontColor,
          selectedLabelStyle: const TextStyle(
            color: AppColors.purpleColor,
            fontSize: 10.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'TTNorms',
          ),
          unselectedLabelStyle: const TextStyle(
            color: AppColors.fontColor,
            fontSize: 10.0,
            fontWeight: FontWeight.w500,
            fontFamily: 'TTNorms',
          ),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Home.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icons/Home.svg',
                colorFilter: const ColorFilter.mode(
                  AppColors.purpleColor,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Category.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icons/Category.svg',
                colorFilter: const ColorFilter.mode(
                  AppColors.purpleColor,
                  BlendMode.srcIn,
                ),
              ),
              label: 'Подборки',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Record.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icons/Record.svg',
                colorFilter: const ColorFilter.mode(
                  AppColors.orangeColor,
                  BlendMode.srcIn,
                ),
              ),
              label: currentRoute == '/record' ? '' : 'Запись',
            ),
            BottomNavigationBarItem(
              icon: _buildSvgIcon(
                currentRoute,
                '/audio_records',
                'assets/icons/Paper.svg',
                'assets/icons/Paper.svg',
              ),
              label: 'Аудиозаписи',
            ),
            BottomNavigationBarItem(
              icon: _buildSvgIcon(
                currentRoute,
                '/profile',
                'assets/icons/Profile.svg',
                'assets/icons/Profile.svg',
              ),
              label: 'Профиль',
            ),
          ],
        );
      },
    );
  }
}
