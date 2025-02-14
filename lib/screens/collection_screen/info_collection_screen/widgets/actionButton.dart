import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

class Actionbutton extends StatefulWidget {
  const Actionbutton({super.key});

  @override
  State<Actionbutton> createState() => _ActionbuttonState();
}

class _ActionbuttonState extends State<Actionbutton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: PopupMenuButton<String>(
        icon: SvgPicture.asset(
          'assets/icons/Dots.svg',
        ),
        offset: const Offset(-10, 45),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(20.0),
          ),
        ),
        onSelected: (value) {
          if (value == 'edit') {
          } else if (value == 'delete') {
            print('Удалить');
          } else if (value == 'choose') {
            context.go('/collection/info/choose');
          }
        },
        itemBuilder: (context) => [
          const PopupMenuItem(
            value: 'edit',
            child: Text('Редактировать'),
          ),
          const PopupMenuItem(
            value: 'choose',
            child: Text('Выбрать несколько'),
          ),
          const PopupMenuItem(
            value: 'delete',
            child: Text('Удалить подборку'),
          ),
          const PopupMenuItem(
            value: 'share',
            child: Text('Поделиться'),
          ),
        ],
      ),
    );
  }
}
