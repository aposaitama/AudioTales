import 'package:bot_toast/bot_toast.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc_event.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc_state.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/widget/deleted_audio_item_tile.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/widget/empty_deleted_audios_list.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

enum PopupMenuOption {
  choose,
  deleteAll,
  restoreAll,
  restoreSeveral,
  deleteSeveral
}

class RecentlyDeletedScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const RecentlyDeletedScreen({super.key, required this.scaffoldKey});

  void _handleMenuOption(BuildContext context, PopupMenuOption option) {
    switch (option) {
      case PopupMenuOption.choose:
        context.read<RecentlyDeletedBloc>().add(
              const ChooseMenuStatusAudioRecentlyDeletedBlocEvent(
                RecentlyDeletedMenuStatus.chooseSeveral,
              ),
            );
        break;
      case PopupMenuOption.deleteAll:
        context.read<RecentlyDeletedBloc>().add(
              const DeleteAllAudioRecentlyDeletedBlocEvent(),
            );
        break;
      case PopupMenuOption.restoreAll:
        context.read<RecentlyDeletedBloc>().add(
              const RestoreAudioRecentlyDeletedBlocEvent(),
            );
        break;
      case PopupMenuOption.restoreSeveral:
        context.read<RecentlyDeletedBloc>().add(
              const ChooseAndRestoreAudioRecentlyDeletedBlocEvent(),
            );

        break;
      case PopupMenuOption.deleteSeveral:
        context.read<RecentlyDeletedBloc>().add(
              const ChooseAndDeleteAudioRecentlyDeletedBlocEvent(),
            );

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<RecentlyDeletedBloc, RecentlyDeletedBlocState>(
      listener: (context, state) {
        if (state.progressStatus == RecentlyDeletedProgressStatus.inProgress) {
          BotToast.showLoading();
        } else {
          BotToast.closeAllLoading();
        }
      },
      child: BlocBuilder<RecentlyDeletedBloc, RecentlyDeletedBlocState>(
        builder: (context, state) {
          if (state.status == RecentlyDeletedStatus.loading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (state.groupedAudio.isEmpty) {
            return const EmptyDeletedAudiosList();
          }
          return Scaffold(
            appBar: AppBar(
              title: RichText(
                textAlign: TextAlign.center,
                text: const TextSpan(
                  text: 'Недавно\n',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 36.0,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 3,
                    height: 1.0,
                    fontFamily: 'TTNorms',
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'удаленные',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36.0,
                        fontWeight: FontWeight.w700,
                        letterSpacing: 3,
                        fontFamily: 'TTNorms',
                      ),
                    ),
                  ],
                ),
              ),
              toolbarHeight: 100,
              backgroundColor: AppColors.blueColor,
              leading: Builder(
                builder: (context) => Align(
                  alignment: Alignment.topLeft,
                  child: IconButton(
                    icon: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SvgPicture.asset(
                        'assets/icons/drawer.svg',
                        height: 24.0,
                        width: 24.0,
                      ),
                    ),
                    onPressed: () => scaffoldKey.currentState?.openDrawer(),
                  ),
                ),
              ),
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 8.0, bottom: 30),
                  child: PopupMenuButton<PopupMenuOption>(
                    offset: const Offset(-10, 15),
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(
                          20.0,
                        ),
                      ),
                    ),
                    onSelected: (option) => _handleMenuOption(context, option),
                    itemBuilder: (context) {
                      if (state.menuStatus !=
                          RecentlyDeletedMenuStatus.initial) {
                        return [
                          const PopupMenuItem<PopupMenuOption>(
                            value: PopupMenuOption.restoreSeveral,
                            child: Text(
                              'Восстановить все',
                            ),
                          ),
                          const PopupMenuItem<PopupMenuOption>(
                            value: PopupMenuOption.deleteSeveral,
                            child: Text(
                              'Удалить все',
                            ),
                          ),
                        ];
                      } else {
                        return [
                          const PopupMenuItem<PopupMenuOption>(
                            value: PopupMenuOption.choose,
                            child: Text(
                              'Выбрать несколько',
                            ),
                          ),
                          const PopupMenuItem<PopupMenuOption>(
                            value: PopupMenuOption.deleteAll,
                            child: Text(
                              'Удалить все',
                            ),
                          ),
                          const PopupMenuItem<PopupMenuOption>(
                            value: PopupMenuOption.restoreAll,
                            child: Text(
                              'Восстановить все',
                            ),
                          ),
                        ];
                      }
                    },
                    child: SvgPicture.asset(
                      'assets/icons/Dots.svg',
                    ),
                  ),
                ),
              ],
            ),
            body: Column(
              children: [
                Stack(
                  children: [
                    const CustomProfileTopClipPath(
                      backgroundColor: AppColors.blueColor,
                      minusHeigth: 70,
                    ),
                    if (state.menuStatus != RecentlyDeletedMenuStatus.initial)
                      Padding(
                        padding: const EdgeInsets.only(right: 16.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () =>
                                  context.read<RecentlyDeletedBloc>().add(
                                        const ChooseMenuStatusAudioRecentlyDeletedBlocEvent(
                                          RecentlyDeletedMenuStatus.initial,
                                        ),
                                      ),
                              child: const Text(
                                'Отменить',
                                style: AppTextStyles.whiteTitle,
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                    ),
                    child: ListView.builder(
                      itemCount: state.groupedAudio.length,
                      itemBuilder: (context, index) {
                        final date = state.groupedAudio.keys.elementAt(index);
                        final audioList = state.groupedAudio[date]!;

                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    date,
                                    style: AppTextStyles.blacksubTitle,
                                  ),
                                ],
                              ),
                            ),
                            ...audioList.map(
                              (audio) => Column(
                                children: [
                                  DeletedAudioItemTile(
                                    audio: audio,
                                    onDelete: () =>
                                        context.read<RecentlyDeletedBloc>().add(
                                              DeleteAudioRecentlyDeletedBlocEvent(
                                                audio.title,
                                              ),
                                            ),
                                    onCircleTap: () {
                                      context.read<RecentlyDeletedBloc>().add(
                                            AddSelectedAudioRecentlyDeletedBlocEvent(
                                              audio,
                                            ),
                                          );
                                    },
                                  ),
                                  const SizedBox(height: 10.0),
                                ],
                              ),
                            ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
