import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/audio_records_screen/widgets/audio_item_tile.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_state.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/actionButton.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
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
    titleController = TextEditingController(text: state.collectionModel.title);
    descriptionController = TextEditingController(
        text: state.collectionModel.collectionDescription);
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
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
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
                      context
                          .read<InfoCollectionBloc>()
                          .add(const EditInfoCollectionBlocEvent());
                    } else if (value == 'delete') {
                    } else if (value == 'choose') {
                      context.go('/collection/info/choose');
                    } else if (value == 'save') {
                    } else if (value == 'close') {
                      context
                          .read<InfoCollectionBloc>()
                          .add(const CloseInfoCollectionBlocEvent());
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
            },
          ),
        ],
      ),
      body: BlocBuilder<InfoCollectionBloc, InfoCollectionBlocState>(
        builder: (context, state) {
          if (state.status == InfoCollectionState.loading) {
            context
                .read<InfoCollectionBloc>()
                .add(const InfoCollectionBlocEvent.loaded([]));
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
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
                          TextField(
                            readOnly: !state.editingMode,
                            controller: titleController,
                            style: AppTextStyles.whiteBodyBold,
                            decoration: const InputDecoration(
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
                                )
                              ],
                              color: Colors.white.withOpacity(0.9),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Stack(children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(14),
                                child: (state.imagePath.isEmpty)
                                    ? Image.network(
                                        state.collectionModel.imageUrl,
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const Icon(Icons.broken_image,
                                                    size: 50),
                                      )
                                    : Image.file(
                                        File(state.imagePath),
                                        width: double.infinity,
                                        height: double.infinity,
                                        fit: BoxFit.cover,
                                        errorBuilder:
                                            (context, error, stackTrace) =>
                                                const Icon(Icons.broken_image,
                                                    size: 50),
                                      ),
                              ),
                              if (state.editingMode)
                                Center(
                                  child: GestureDetector(
                                    onTap: () => context
                                        .read<InfoCollectionBloc>()
                                        .add(const InfoCollectionBlocEvent
                                            .chooseImage()),
                                    child: SvgPicture.asset(
                                        'assets/icons/Edit_Photo.svg'),
                                  ),
                                )
                            ]),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20.0,
                ),
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
                      child: TextField(
                        maxLines: null,
                        scrollPhysics: const NeverScrollableScrollPhysics(),
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
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
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
                    itemCount: state.audioList.length,
                    itemBuilder: (context, int index) {
                      return Column(
                        children: [
                          AudioItemTile(
                            audio: state.audioList[index],
                            color: AppColors.greenColor,
                            title: state.audioList[index].title,
                            duration: '30 минут',
                            onRename: () {
                              print("Переименовать натиснуто");
                            },
                            onDelete: () {
                              context.read<AudioRecordsScreenBloc>().add(
                                    DeleteAudioFromCollectionRecordsScreenStateEvent(
                                        state.collectionModel.title,
                                        state.audioList[index].title),
                                  );
                            },
                            onChoose: () {
                              context.go('/collection/info/choose');
                            },
                            onShare: () {
                              print("Поделиться натиснуто");
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
