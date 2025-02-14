import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc_state.dart';
import 'package:memory_box_avada/screens/root_screen/widgets/mini_player.dart';
import 'package:memory_box_avada/widgets/custom_bottom_nav_bar.dart';
import 'package:memory_box_avada/widgets/custom_drawer.dart';
import 'package:memory_box_avada/widgets/recently_deleted_nav_bar.dart';

class RootScreen extends StatelessWidget {
  final StatefulNavigationShell navigationShell;
  const RootScreen({
    super.key,
    required this.navigationShell,
    required this.scaffoldKey,
  });
  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecentlyDeletedBloc, RecentlyDeletedBlocState>(
      builder: (context, state) {
        return Scaffold(
          key: scaffoldKey,
          drawer: const CustomDrawer(),
          body: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              navigationShell,
              const MiniPlayer(),
            ],
          ),
          bottomNavigationBar:
              state.menuStatus != RecentlyDeletedMenuStatus.chooseSeveral
                  ? Container(
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
                    )
                  : Container(
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
                        child: const RecentlyDeletedNavBar(),
                      ),
                    ),
        );
      },
    );
  }
}
