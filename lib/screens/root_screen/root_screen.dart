import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';
import 'package:memory_box_avada/widgets/custom_bottom_nav_bar.dart';
import 'package:memory_box_avada/widgets/custom_drawer.dart';

class RootScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const RootScreen(
      {super.key, required this.navigationShell, required this.scaffoldKey});
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    bool isVisible = true;
    return Scaffold(
      key: scaffoldKey,
      drawer: const CustomDrawer(),
      body: Stack(alignment: Alignment.bottomCenter, children: [
        navigationShell,
        isVisible
            ? Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                    color: AppColors.purpleColor,
                    borderRadius: BorderRadius.circular(41),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
                          child: SvgPicture.asset(
                            'assets/icons/Play.svg',
                            colorFilter: const ColorFilter.mode(
                                Colors.white, BlendMode.srcIn),
                          ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Малішь коки 1',
                              style: AppTextStyles.subtitleWhite,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18),
                          child:
                              SvgPicture.asset('assets/icons/FluentArrow.svg'),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : SizedBox()
      ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.07),
              offset: const Offset(0, -50),
              blurRadius: 30,
              spreadRadius: 1,
            ),
          ],
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: CustomBottomNavBar(
            scaffoldKey: scaffoldKey,
          ),
        ),
      ),
    );
  }
}
