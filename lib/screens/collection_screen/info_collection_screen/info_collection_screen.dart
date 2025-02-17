import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/audio_records_screen/widgets/audio_item_tile.dart';
import 'package:memory_box_avada/screens/collection_screen/add_collection_screen/choose_audio_records/widgets/add_audio_item_tile.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_state.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/choose_audio_item_tile.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/dialogButton.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/run_all_collection_audios.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/show_delete_dialog.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';
import 'package:memory_box_avada/sources/duration_helper.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class InfoCollectionScreen extends StatefulWidget {
  const InfoCollectionScreen({
    super.key,
  });

  @override
  State<InfoCollectionScreen> createState() => _InfoCollectionScreenState();
}

class _InfoCollectionScreenState extends State<InfoCollectionScreen> {
  bool isExpanded = false;
  late TextEditingController titleController;
  late TextEditingController descriptionController;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final state = context.read<InfoCollectionBloc>().state;
    titleController = TextEditingController(
      text: state.collectionModel.title,
    );
    descriptionController = TextEditingController(
      text: state.collectionModel.collectionDescription,
    );
  }

  String formatDate(String creationTime) {
    final dateTime = DateTime.parse(creationTime);
    return '${dateTime.day.toString().padLeft(
              2,
              '0',
            )}.'
        '${dateTime.month.toString().padLeft(
              2,
              '0',
            )}.'
        '${dateTime.year.toString().substring(
              2,
            )}';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 65,
        backgroundColor: AppColors.greenColor,
        leadingWidth: 75.0,
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(
              left: 15.0,
            ),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(
                    15,
                  ),
                ),
                child: IconButton(
                  iconSize: 36.0,
                  icon: SvgPicture.asset(
                    'assets/icons/Arrow_Left_Circle.svg',
                    height: 36.0,
                    width: 36.0,
                  ),
                  onPressed: () => context.pop(),
                ),
              ),
            ),
          ),
        ),
        actions: [
          BlocBuilder<InfoCollectionBloc, InfoCollectionBlocState>(
            builder: (context, state) {
              final selectedAudios = state.selectedAudios;
              return Padding(
                padding: const EdgeInsets.only(right: 15.0),
                child: PopupMenuButton(
                  icon: SvgPicture.asset(
                    'assets/icons/Dots.svg',
                  ),
                  offset: const Offset(-10, 45),
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(
                        20.0,
                      ),
                    ),
                  ),
                  onSelected: (value) {
                    if (value == InfoCollectionPopupMode.edit) {
                      context.read<InfoCollectionBloc>().add(
                            const InfoCollectionModeBlocEvent(
                              InfoCollectionPopupMode.edit,
                            ),
                          );
                      context.read<InfoCollectionBloc>().add(
                            const EditInfoCollectionBlocEvent(),
                          );
                    } else if (value ==
                        InfoCollectionPopupMode.deleteCollection) {
                      ShowDeleteDialog.show(
                        context,
                        onYes: () {
                          context.read<InfoCollectionBloc>().add(
                                const DeleteInfoCollectionBlocEvent(),
                              );
                          context.go('/collection');
                        },
                      );
                    } else if (value == InfoCollectionPopupMode.chooseSeveral) {
                      context.read<InfoCollectionBloc>().add(
                            const InfoCollectionModeBlocEvent(
                              InfoCollectionPopupMode.chooseSeveral,
                            ),
                          );
                    } else if (value == InfoCollectionPopupMode.share) {
                      context.read<InfoCollectionBloc>().add(
                            const ShareCollectionInfoCollectionBlocEvent(),
                          );
                    } else if (value == InfoCollectionEditingMode.save) {
                      context.read<InfoCollectionBloc>().add(
                            SaveInfoCollectionBlocEvent(
                              titleController.text,
                              descriptionController.text,
                            ),
                          );
                    } else if (value == InfoCollectionEditingMode.close) {
                      context.read<InfoCollectionBloc>().add(
                            const InfoCollectionModeBlocEvent(
                              InfoCollectionPopupMode.initial,
                            ),
                          );
                      context.read<InfoCollectionBloc>().add(
                            const CloseInfoCollectionBlocEvent(),
                          );
                    } else if (value == InfoCollectionChooseMode.cancel) {
                      context.read<InfoCollectionBloc>().add(
                            const InfoCollectionModeBlocEvent(
                              InfoCollectionPopupMode.initial,
                            ),
                          );
                    } else if (value ==
                        InfoCollectionChooseMode.addToCollection) {
                      context.read<AudioRecordsScreenBloc>().add(
                            ChooseAudioRecordsScreenStateEvent(
                              selectedAudios,
                            ),
                          );
                      context.read<InfoCollectionBloc>().add(
                            const InfoCollectionModeBlocEvent(
                              InfoCollectionPopupMode.initial,
                            ),
                          );
                      context.go('/collection/info/choose');
                    } else if (value == InfoCollectionChooseMode.share) {
                      context.read<InfoCollectionBloc>().add(
                            const ShareAudiosInfoCollectionBlocEvent(),
                          );
                      context.read<InfoCollectionBloc>().add(
                            const InfoCollectionModeBlocEvent(
                              InfoCollectionPopupMode.initial,
                            ),
                          );
                    } else if (value == InfoCollectionChooseMode.download) {
                      context.read<InfoCollectionBloc>().add(
                            const DonwloadAudiosInfoCollectionBlocEvent(),
                          );
                      context.read<InfoCollectionBloc>().add(
                            const InfoCollectionModeBlocEvent(
                              InfoCollectionPopupMode.initial,
                            ),
                          );
                    } else if (value == InfoCollectionChooseMode.deleteAudios) {
                      context.read<InfoCollectionBloc>().add(
                            const DeleteSeveralAudiosInfoCollectionBlocEvent(),
                          );
                      context.read<InfoCollectionBloc>().add(
                            const InfoCollectionModeBlocEvent(
                              InfoCollectionPopupMode.initial,
                            ),
                          );
                    }
                  },
                  itemBuilder: (context) {
                    if (state.popupModeStatus == InfoCollectionPopupMode.edit) {
                      return [
                        const PopupMenuItem(
                          value: InfoCollectionEditingMode.save,
                          child: Text(
                            'Сохранить',
                          ),
                        ),
                        const PopupMenuItem(
                          value: InfoCollectionEditingMode.close,
                          child: Text(
                            'Отменить',
                          ),
                        ),
                      ];
                    }
                    if (state.popupModeStatus ==
                        InfoCollectionPopupMode.initial) {
                      return [
                        const PopupMenuItem(
                          value: InfoCollectionPopupMode.edit,
                          child: Text(
                            'Редактировать',
                          ),
                        ),
                        const PopupMenuItem(
                          value: InfoCollectionPopupMode.chooseSeveral,
                          child: Text(
                            'Выбрать несколько',
                          ),
                        ),
                        const PopupMenuItem(
                          value: InfoCollectionPopupMode.deleteCollection,
                          child: Text(
                            'Удалить подборку',
                          ),
                        ),
                        const PopupMenuItem(
                          value: InfoCollectionPopupMode.share,
                          child: Text(
                            'Поделиться',
                          ),
                        ),
                      ];
                    }
                    if (state.popupModeStatus ==
                        InfoCollectionPopupMode.chooseSeveral) {
                      return [
                        const PopupMenuItem(
                          value: InfoCollectionChooseMode.cancel,
                          child: Text(
                            'Отменить выбор',
                          ),
                        ),
                        const PopupMenuItem(
                          value: InfoCollectionChooseMode.addToCollection,
                          child: Text(
                            'Добавить в подборку',
                          ),
                        ),
                        const PopupMenuItem(
                          value: InfoCollectionChooseMode.share,
                          child: Text(
                            'Поделиться',
                          ),
                        ),
                        const PopupMenuItem(
                          value: InfoCollectionChooseMode.download,
                          child: Text(
                            'Скачать все',
                          ),
                        ),
                        const PopupMenuItem(
                          value: InfoCollectionChooseMode.deleteAudios,
                          child: Text(
                            'Удалить все',
                          ),
                        ),
                      ];
                    }

                    return [
                      const PopupMenuItem(
                        value: InfoCollectionEditingMode.save,
                        child: Text(
                          'Сохранить',
                        ),
                      ),
                      const PopupMenuItem(
                        value: InfoCollectionEditingMode.close,
                        child: Text(
                          'Отменить',
                        ),
                      ),
                    ];
                  },
                ),
              );
            },
          ),
        ],
      ),
      body: BlocBuilder<InfoCollectionBloc, InfoCollectionBlocState>(
        builder: (context, state) {
          final audioList = state.collectionModel.audiosList;
          return SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    const CustomProfileTopClipPath(
                      backgroundColor: AppColors.greenColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 30.0,
                        left: 16.0,
                        right: 16.0,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          !state.editingMode
                              ? Text(
                                  state.collectionModel.title,
                                  style: AppTextStyles.whiteBodyBold,
                                )
                              : TextField(
                                  controller: titleController,
                                  style: AppTextStyles.whiteBodyBold,
                                  decoration: const InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 0.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                          const SizedBox(
                            height: 20.0,
                          ),
                          Container(
                            height: 240.0,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.15),
                                  offset: const Offset(0, 10),
                                  blurRadius: 10,
                                  spreadRadius: 1.0,
                                ),
                              ],
                              color: Colors.white.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(14),
                                  child: (state.imagePath.isEmpty)
                                      ? Stack(
                                          children: [
                                            CachedNetworkImage(
                                              imageUrl: state
                                                  .collectionModel.imageUrl,
                                              width: double.infinity,
                                              height: double.infinity,
                                              fit: BoxFit.cover,
                                              errorWidget: (
                                                context,
                                                error,
                                                stackTrace,
                                              ) =>
                                                  const Icon(
                                                Icons.broken_image,
                                                size: 50,
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                vertical: 19.0,
                                                horizontal: 27.0,
                                              ),
                                              child: !state.editingMode
                                                  ? Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .spaceBetween,
                                                      children: [
                                                        Text(
                                                          state.collectionModel
                                                              .creationTime
                                                          // formatDate(
                                                          //   state
                                                          //       .collectionModel
                                                          //       .creationTime,
                                                          ,
                                                          style: AppTextStyles
                                                              .subtitleWhite,
                                                        ),
                                                        Row(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .spaceBetween,
                                                          children: [
                                                            Column(
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  '${state.collectionModel.audiosList.length.toString()} аудио',
                                                                  style: AppTextStyles
                                                                      .subtitleWhite,
                                                                ),
                                                                const SizedBox(
                                                                  height: 4.0,
                                                                ),
                                                                SizedBox(
                                                                  width: 80,
                                                                  child: Text(
                                                                    formatDuration(
                                                                      getTotalDuration(
                                                                        state
                                                                            .collectionModel
                                                                            .audiosList,
                                                                      ),
                                                                    ),
                                                                    style: AppTextStyles
                                                                        .subtitleWhite,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                            if (state
                                                                    .popupModeStatus !=
                                                                InfoCollectionPopupMode
                                                                    .chooseSeveral)
                                                              Column(
                                                                children: [
                                                                  BlocBuilder<
                                                                      MiniPlayerBloc,
                                                                      MiniPlayerBlocState>(
                                                                    builder: (
                                                                      context,
                                                                      state,
                                                                    ) {
                                                                      return GestureDetector(
                                                                        onTap:
                                                                            () {
                                                                          context
                                                                              .read<MiniPlayerBloc>()
                                                                              .add(
                                                                                MiniPlayerBlocEvent.playAll(
                                                                                  !state.isPlayingAll,
                                                                                ),
                                                                              );
                                                                          if (!state
                                                                              .isPlayingAll) {
                                                                            context.read<MiniPlayerBloc>().add(
                                                                                  MiniPlayerBlocEvent.open(
                                                                                    audioList,
                                                                                  ),
                                                                                );
                                                                          } else {
                                                                            context.read<MiniPlayerBloc>().add(
                                                                                  const MiniPlayerBlocEvent.close(),
                                                                                );
                                                                          }
                                                                        },
                                                                        child:
                                                                            const RunAllCollectionAudios(),
                                                                      );
                                                                    },
                                                                  ),
                                                                ],
                                                              ),
                                                          ],
                                                        ),
                                                      ],
                                                    )
                                                  : null,
                                            ),
                                          ],
                                        )
                                      : Image.file(
                                          File(state.imagePath),
                                          width: double.infinity,
                                          height: double.infinity,
                                          fit: BoxFit.cover,
                                          errorBuilder:
                                              (context, error, stackTrace) =>
                                                  const Icon(
                                            Icons.broken_image,
                                            size: 50,
                                          ),
                                        ),
                                ),
                                if (state.editingMode)
                                  Center(
                                    child: GestureDetector(
                                      onTap: () => context
                                          .read<InfoCollectionBloc>()
                                          .add(
                                            const InfoCollectionBlocEvent
                                                .chooseImage(),
                                          ),
                                      child: SvgPicture.asset(
                                        'assets/icons/Edit_Photo.svg',
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
                if (state.popupModeStatus !=
                    InfoCollectionPopupMode.chooseSeveral)
                  AnimatedSize(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                    child: Container(
                      constraints: BoxConstraints(
                        maxHeight: (isExpanded || state.editingMode)
                            ? double.infinity
                            : 90.0,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: state.editingMode
                            ? TextField(
                                maxLines: null,
                                scrollPhysics:
                                    const NeverScrollableScrollPhysics(),
                                readOnly: !state.editingMode,
                                controller: descriptionController,
                                style: AppTextStyles.subtitleTall,
                                decoration: const InputDecoration(
                                  contentPadding: EdgeInsets.symmetric(
                                    horizontal: 10.0,
                                  ),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              )
                            : Padding(
                                padding: const EdgeInsets.only(left: 7.0),
                                child: Text(
                                  state.collectionModel.collectionDescription,
                                  style: AppTextStyles.subtitleTall,
                                ),
                              ),
                      ),
                    ),
                  ),
                const SizedBox(
                  height: 20.0,
                ),
                if (state.popupModeStatus !=
                    InfoCollectionPopupMode.chooseSeveral)
                  if (!state.editingMode)
                    GestureDetector(
                      onTap: () {
                        setState(
                          () {
                            isExpanded = !isExpanded;
                          },
                        );
                      },
                      child: Text(
                        isExpanded ? 'Скрыть' : 'Подробнее',
                        style: TextStyle(
                          color: AppColors.fontColor.withOpacity(0.5),
                          fontSize: 13.0,
                          fontWeight: FontWeight.w400,
                          height: 1.0,
                          letterSpacing: 1,
                          fontFamily: 'TTNorms',
                        ),
                      ),
                    ),
                const SizedBox(
                  height: 20.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: state.collectionModel.audiosList.length,
                    itemBuilder: (context, int index) {
                      return Column(
                        children: [
                          state.popupModeStatus !=
                                  InfoCollectionPopupMode.chooseSeveral
                              ? AudioItemTile(
                                  audio:
                                      state.collectionModel.audiosList[index],
                                  color: AppColors.greenColor,
                                  title: state
                                      .collectionModel.audiosList[index].title,
                                  duration: '30 минут',
                                  onSave: (controller) {
                                    print("Поделиться натиснуто");
                                  },
                                  onCancel: () {
                                    print("Поделиться натиснуто");
                                  },
                                  onRename: () {
                                    print("Переименовать натиснуто");
                                  },
                                  onDelete: () {
                                    context.read<AudioRecordsScreenBloc>().add(
                                          DeleteAudioFromCollectionRecordsScreenStateEvent(
                                            state.collectionModel.title,
                                            state.collectionModel
                                                .audiosList[index].title,
                                          ),
                                        );
                                  },
                                  onChoose: () {
                                    context.go('/collection/info/choose');
                                  },
                                  onShare: () {
                                    context.read<AudioRecordsScreenBloc>().add(
                                          ShareAudioRecordsScreenStateEvent(
                                            state.collectionModel
                                                .audiosList[index],
                                          ),
                                        );
                                  },
                                )
                              : ChooseAudioItemTile(
                                  color: AppColors.greenColor,
                                  audio:
                                      state.collectionModel.audiosList[index],
                                  onCircleTap: () {
                                    context.read<InfoCollectionBloc>().add(
                                          AddAudioToSelevtedListInfoCollectionBlocEvent(
                                            state.collectionModel
                                                .audiosList[index],
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
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
