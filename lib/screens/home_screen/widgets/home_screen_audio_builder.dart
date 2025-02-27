import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';
import 'package:memory_box_avada/screens/audio_records_screen/widgets/audio_item_tile.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/show_delete_dialog.dart';
import 'package:memory_box_avada/screens/home_screen/bloc/home_screen_bloc.dart';
import 'package:memory_box_avada/screens/home_screen/bloc/home_screen_bloc_event.dart';
import 'package:memory_box_avada/screens/home_screen/bloc/home_screen_bloc_state.dart';
import 'package:memory_box_avada/screens/home_screen/widgets/audio_home_tile.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class HomeScreenAudioBuilder extends StatelessWidget {
  final ScrollController? controller;
  const HomeScreenAudioBuilder({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            controller: controller,
            itemCount: state.audioList.length,
            itemBuilder: (context, int index) {
              return Column(
                children: [
                  AudioHomeTile(
                    color: AppColors.purpleColor,
                    audio: state.audioList[index],
                    title: state.audioList[index].title,
                    duration: '30 минут',
                    onRename: () {
                      context.read<HomeScreenBloc>().add(
                            const ChangePopupHomeScreenBlocEvent(
                              HomePopupStatus.editing,
                            ),
                          );
                      context.read<HomeScreenBloc>().add(
                            EditHomeScreenBlocEvent(
                              state.audioList[index].id,
                            ),
                          );
                    },
                    onSave: (controller) {
                      context.read<HomeScreenBloc>().add(
                            SaveHomeScreenBlocEvent(
                              controller.text,
                            ),
                          );
                    },
                    onCancel: () {
                      context.read<HomeScreenBloc>().add(
                            const ChangePopupHomeScreenBlocEvent(
                              HomePopupStatus.initial,
                            ),
                          );
                      context.read<HomeScreenBloc>().add(
                            const CancelEditingHomeScreenBlocEvent(),
                          );
                    },
                    onDelete: () {
                      ShowDeleteDialog.show(
                        'Ваш файл перенесется в папку “Недавно удаленные”. Через 15 дней он исчезнет.',
                        context,
                        onYes: () {
                          context.read<HomeScreenBloc>().add(
                                DeleteHomeScreenBlocEvent(
                                  state.audioList[index].title,
                                ),
                              );
                        },
                      );
                    },
                    onChoose: () {
                      context.read<HomeScreenBloc>().add(
                            ChooseHomeScreenBlocEvent(
                              [state.audioList[index]],
                            ),
                          );
                      context.go(
                        '/collection/info/chooseHome',
                      );
                    },
                    onShare: () {
                      context.read<HomeScreenBloc>().add(
                            ShareHomeScreenBlocEvent(
                              state.audioList[index],
                            ),
                          );
                    },
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}
