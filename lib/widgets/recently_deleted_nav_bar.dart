import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class RecentlyDeletedNavBar extends StatelessWidget {
  const RecentlyDeletedNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
