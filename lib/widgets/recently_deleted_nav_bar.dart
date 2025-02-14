import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc_event.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class RecentlyDeletedNavBar extends StatelessWidget {
  void _onTap(index, BuildContext context) {
    switch (index) {
      case 0:
        context.read<RecentlyDeletedBloc>().add(
              const ChooseAndRestoreAudioRecentlyDeletedBlocEvent(),
            );

      case 1:
        context.read<RecentlyDeletedBloc>().add(
              const ChooseAndDeleteAudioRecentlyDeletedBlocEvent(),
            );
    }
  }

  const RecentlyDeletedNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: (index) => _onTap(
        index,
        context,
      ),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color.fromRGBO(58, 58, 85, 0.8),
      unselectedLabelStyle: AppTextStyles.navBarDelete,
      selectedLabelStyle: AppTextStyles.navBarDelete,
      items: [
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/icons/Swap.svg'),
          ),
          label: 'Восстановить все',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/icons/Delete.svg'),
          ),
          label: 'Удалить все',
        ),
      ],
    );
  }
}
