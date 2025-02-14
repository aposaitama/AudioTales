// collection_popup_menu.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_state.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/delete_confirmation_dialog.dart';

class CollectionPopupMenu extends StatelessWidget {
  const CollectionPopupMenu({
    required this.state,
    required this.context,
    super.key,
  });

  final InfoCollectionBlocState state;
  final BuildContext context;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.0),
      child: PopupMenuButton<String>(
        icon: SvgPicture.asset('assets/icons/Dots.svg'),
        offset: const Offset(-10, 45),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
        ),
        onSelected: (value) {
          if (value == 'edit') {
            context
                .read<InfoCollectionBloc>()
                .add(const EditInfoCollectionBlocEvent());
          } else if (value == 'delete') {
            showDialog(
              context: context,
              builder: (context) => DeleteConfirmationDialog(
                onConfirm: () {
                  context
                      .read<InfoCollectionBloc>()
                      .add(const DeleteInfoCollectionBlocEvent());
                  context.go('/collection');
                },
              ),
            );
          } else if (value == 'choose') {
            context.go('/collection/info/choose');
          } else if (value == 'save') {
            context.read<InfoCollectionBloc>().add(SaveInfoCollectionBlocEvent(
                  context.read<TextEditingController>().text,
                  context.read<TextEditingController>().text,
                ),);
          } else if (value == 'close') {
            context
                .read<InfoCollectionBloc>()
                .add(const CloseInfoCollectionBlocEvent());
            context.pop();
          }
        },
        itemBuilder: (context) => state.editingMode
            ? [
                const PopupMenuItem(
                  value: 'save',
                  child: Text('Сохранить'),
                ),
                const PopupMenuItem(
                  value: 'close',
                  child: Text('Отменить'),
                ),
              ]
            : [
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
