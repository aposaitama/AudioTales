import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_screen_event.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({super.key});

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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        final currentRoute = _getRouteFromIndex(state.currentIndex);

        return BottomNavigationBar(
          currentIndex: state.currentIndex,
          onTap: (index) {
            context.read<NavigationCubit>().navigateTo(index);

            switch (index) {
              case 0:
                context.go('/home');
                break;
              case 1:
                context.go('/collection');
                break;
              case 2:
                context.read<RecordBloc>().add(StartRecordingEvent());

                context.go('/record');

                break;
              case 3:
                context.go('/audio_records');
                break;
              case 4:
                context.go('/profile');
                break;
            }
          },
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
                    AppColors.purpleColor, BlendMode.srcIn),
              ),
              label: 'Главная',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Category.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icons/Category.svg',
                colorFilter: const ColorFilter.mode(
                    AppColors.purpleColor, BlendMode.srcIn),
              ),
              label: 'Подборки',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset('assets/icons/Record.svg'),
              activeIcon: SvgPicture.asset(
                'assets/icons/Record.svg',
                colorFilter: const ColorFilter.mode(
                    AppColors.orangeColor, BlendMode.srcIn),
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
