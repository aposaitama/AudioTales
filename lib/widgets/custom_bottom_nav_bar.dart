// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:go_router/go_router.dart';
// import 'package:memory_box_avada/di/service_locator.dart';
// import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
// import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
// import 'package:memory_box_avada/screens/record_screen/bloc/record_status_event.dart';
// import 'package:memory_box_avada/screens/record_screen/record_screen.dart';
// import 'package:memory_box_avada/style/colors/colors.dart';
// import 'package:memory_box_avada/widgets/access_denied_dialog.dart';

// class CustomBottomNavBar extends StatefulWidget {
//   final GlobalKey<ScaffoldState> scaffoldKey;
//   const CustomBottomNavBar({super.key, required this.scaffoldKey});

//   @override
//   State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
// }

// Widget _buildSvgIcon(
//   String currentRoute,
//   String routeName,
//   String inactivePath,
//   String activePath,
// ) {
//   return SvgPicture.asset(
//     currentRoute == routeName ? activePath : inactivePath,
//     colorFilter: (currentRoute == routeName && currentRoute != '/record')
//         ? const ColorFilter.mode(AppColors.purpleColor, BlendMode.srcIn)
//         : null,
//   );
// }

// String _getRouteFromIndex(int currentIndex) {
//   switch (currentIndex) {
//     case 0:
//       return '/home';
//     case 1:
//       return '/collection';
//     case 2:
//       return '/record';
//     case 3:
//       return '/audio_records';
//     case 4:
//       return '/profile';
//     default:
//       return '/home';
//   }
// }

// class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
//   final isAnonymous = locator<FirebaseAuth>().currentUser?.isAnonymous;

//   bool isBottomSheetOpen = false;

//   void _onTap(index) {
//     final restrictedRoutes = [1, 3];
//     if (isAnonymous! && restrictedRoutes.contains(index)) {
//       AccessDeniedDialog.show(context);
//       return;
//     }

//     context.read<NavigationCubit>().navigateTo(index);

//     switch (index) {
//       case 0:
//         context.go('/home');
//         break;
//       case 1:
//         context.go('/collection');
//         break;
//       case 2:
//         context
//             .read<RecordStatusBloc>()
//             .add(const RecordingRecordStatusEvent());
//         showBottomSheet(
//           context: context,
//           builder: (context) {
//             return const RecordScreen();
//           },
//         ).closed.then((_) {
//           setState(() {
//             isBottomSheetOpen = false;
//             print(isBottomSheetOpen);
//           });
//         });
//         setState(
//           () {
//             isBottomSheetOpen = true;
//           },
//         );

//         break;
//       case 3:
//         context.go('/audio_records');
//         break;
//       case 4:
//         context.go('/profile');
//         break;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<NavigationCubit, NavigationState>(
//       builder: (context, state) {
//         final currentRoute = _getRouteFromIndex(state.currentIndex);

//         return BottomNavigationBar(
//           currentIndex: state.currentIndex,
//           onTap: _onTap,
//           selectedItemColor: AppColors.purpleColor,
//           unselectedItemColor: AppColors.fontColor,
//           selectedLabelStyle: const TextStyle(
//             color: AppColors.purpleColor,
//             fontSize: 10.0,
//             fontWeight: FontWeight.w500,
//             fontFamily: 'TTNorms',
//           ),
//           unselectedLabelStyle: const TextStyle(
//             color: AppColors.fontColor,
//             fontSize: 10.0,
//             fontWeight: FontWeight.w500,
//             fontFamily: 'TTNorms',
//           ),
//           type: BottomNavigationBarType.fixed,
//           items: [
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/icons/Home.svg'),
//               activeIcon: SvgPicture.asset(
//                 'assets/icons/Home.svg',
//                 colorFilter: const ColorFilter.mode(
//                   AppColors.purpleColor,
//                   BlendMode.srcIn,
//                 ),
//               ),
//               label: 'Главная',
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/icons/Category.svg'),
//               activeIcon: SvgPicture.asset(
//                 'assets/icons/Category.svg',
//                 colorFilter: const ColorFilter.mode(
//                   AppColors.purpleColor,
//                   BlendMode.srcIn,
//                 ),
//               ),
//               label: 'Подборки',
//             ),
//             BottomNavigationBarItem(
//               icon: SvgPicture.asset('assets/icons/Record.svg'),
//               activeIcon: SvgPicture.asset(
//                 'assets/icons/Record.svg',
//                 colorFilter: const ColorFilter.mode(
//                   AppColors.orangeColor,
//                   BlendMode.srcIn,
//                 ),
//               ),
//               label: currentRoute == '/record' ? '' : 'Запись',
//             ),
//             BottomNavigationBarItem(
//               icon: _buildSvgIcon(
//                 currentRoute,
//                 '/audio_records',
//                 'assets/icons/Paper.svg',
//                 'assets/icons/Paper.svg',
//               ),
//               label: 'Аудиозаписи',
//             ),
//             BottomNavigationBarItem(
//               icon: _buildSvgIcon(
//                 currentRoute,
//                 '/profile',
//                 'assets/icons/Profile.svg',
//                 'assets/icons/Profile.svg',
//               ),
//               label: 'Профиль',
//             ),
//           ],
//         );
//       },
//     );
//   }
// }

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_event.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_state.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/record_screen.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/widgets/access_denied_dialog.dart';

class CustomBottomNavBar extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const CustomBottomNavBar({super.key, required this.scaffoldKey});

  @override
  State<CustomBottomNavBar> createState() => _CustomBottomNavBarState();
}

class _CustomBottomNavBarState extends State<CustomBottomNavBar> {
  final isAnonymous = locator<FirebaseAuth>().currentUser?.isAnonymous;
  bool isBottomSheetOpen = false;

  void _onTap(int index) {
    FocusScope.of(context).unfocus();
    final restrictedRoutes = [1, 3];
    if (isAnonymous! && restrictedRoutes.contains(index)) {
      AccessDeniedDialog.show(context);
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
          builder: (context) => const RecordScreen(),
        ).closed.then((_) {
          if (mounted) {
            context.read<NavigationCubit>().navigateTo(-1);
          }
        });
        setState(() => isBottomSheetOpen = true);
        break;
      case 3:
        context.go('/audio_records');
        break;
      case 4:
        context.go('/profile');
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NavigationCubit, NavigationState>(
      builder: (context, state) {
        final width = MediaQuery.of(context).size.width;
        return Container(
          padding: const EdgeInsets.only(bottom: 20.0),
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 5,
                spreadRadius: 2,
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              BlocBuilder<RecordStatusBloc, RecordStatusState>(
                builder: (context, recordState) {
                  return Center(
                    child: (state.currentIndex == 2)
                        ? recordState.status == RecordCommonStatus.listen
                            ? const SizedBox(
                                height: 7.0,
                              )
                            : Container(
                                width: 4.0,
                                height: 7.0,
                                color: AppColors.orangeColor,
                              )
                        : const SizedBox(
                            height: 7.0,
                          ),
                  );
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: width / 2 - 43,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildNavItem(0, 'assets/icons/Home.svg', 'Главная',
                            state.currentIndex),
                        _buildNavItem(1, 'assets/icons/Category.svg',
                            'Подборки', state.currentIndex),
                      ],
                    ),
                  ),
                  _buildNavItem(
                    2,
                    'assets/icons/Record.svg',
                    'Запись',
                    state.currentIndex,
                  ),
                  SizedBox(
                    width: width / 2 - 43,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildNavItem(3, 'assets/icons/Paper.svg',
                            'Аудиозаписи', state.currentIndex),
                        _buildNavItem(4, 'assets/icons/Profile.svg', 'Профиль',
                            state.currentIndex),
                      ],
                    ),
                  )
                ],
              )

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceAround,
              //   children: [
              //     _buildNavItem(0, 'assets/icons/Home.svg', 'Главная',
              //         state.currentIndex),
              //     _buildNavItem(1, 'assets/icons/Category.svg', 'Подборки',
              //         state.currentIndex),
              //     _buildNavItem(
              //         2, 'assets/icons/Record.svg', '', state.currentIndex,
              //         isSpecial: true),
              //     _buildNavItem(3, 'assets/icons/Paper.svg', 'Аудиозаписи',
              //         state.currentIndex),
              //     _buildNavItem(4, 'assets/icons/Profile.svg', 'Профиль',
              //         state.currentIndex),
              //   ],
              // ),
            ],
          ),
        );
      },
    );
  }

  Widget _buildNavItem(
      int index, String iconPath, String label, int currentIndex,
      {bool isSpecial = false}) {
    return GestureDetector(
      onTap: () => _onTap(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SvgPicture.asset(
            iconPath,
            colorFilter: index == 2
                ? index == currentIndex
                    ? const ColorFilter.mode(
                        AppColors.orangeColor,
                        BlendMode.srcIn,
                      )
                    : null
                : ColorFilter.mode(
                    index == currentIndex
                        ? AppColors.purpleColor
                        : AppColors.fontColor,
                    BlendMode.srcIn,
                  ),
          ),
          index == 2
              ? index == currentIndex
                  ? Text(
                      label,
                      style: const TextStyle(
                        color: Colors.transparent,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    )
                  : Text(
                      label,
                      style: const TextStyle(
                        color: AppColors.orangeColor,
                        fontSize: 10,
                        fontWeight: FontWeight.w500,
                      ),
                    )
              : Text(
                  label,
                  style: TextStyle(
                    color: index == currentIndex
                        ? AppColors.purpleColor
                        : AppColors.fontColor,
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
        ],
      ),
    );
  }
}
