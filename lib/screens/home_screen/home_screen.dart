import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';
import 'package:memory_box_avada/screens/audio_records_screen/widgets/audio_item_tile.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_state.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/show_delete_dialog.dart';
import 'package:memory_box_avada/screens/home_screen/widgets/colection_preview.dart';
import 'package:memory_box_avada/screens/home_screen/widgets/custom_home_top_clip_path.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class HomeScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const HomeScreen({
    super.key,
    required this.scaffoldKey,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _scrollController;

  void _scrollListener() {
    final totalItems =
        context.read<AudioRecordsScreenBloc>().state.audioList.length;
    final audioCount = 9;
    final currentIndex = _scrollController.position.pixels /
        (_scrollController.position.maxScrollExtent / totalItems);
    if (currentIndex >= totalItems - 1 && totalItems < audioCount) {
      context
          .read<AudioRecordsScreenBloc>()
          .add(const LoadNextPageAudioRecordsScreenStateEvent());
    }
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.purpleColor,
        toolbarHeight: 62,
        leading: Builder(
          builder: (context) => Align(
            alignment: Alignment.topCenter,
            child: IconButton(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/drawer.svg',
                  height: 24.0,
                  width: 24.0,
                ),
              ),
              onPressed: () => widget.scaffoldKey.currentState?.openDrawer(),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          const CustomHomeTopClipPath(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          const Text(
                            'Подборки',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 2,
                              fontFamily: 'TTNorms',
                            ),
                          ),
                          BlocBuilder<NavigationCubit, NavigationState>(
                            builder: (context, state) {
                              return GestureDetector(
                                onTap: () {
                                  context.read<NavigationCubit>().navigateTo(1);
                                  context.go('/collection');
                                },
                                child: const Text(
                                  'Открыть все',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'TTNorms',
                                  ),
                                ),
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24.0,
                      ),
                      BlocBuilder<CollectionBloc, CollectionBlocState>(
                        builder: (context, state) {
                          return CollectionPreview(
                            collectionList: state.collectionList,
                          );
                        },
                      ),
                      const SizedBox(
                        height: 36.0,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(25),
                          topRight: Radius.circular(25),
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            offset: const Offset(0, 3),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(
                          top: 24.0,
                          // bottom: 105.0,
                          left: 17.0,
                          right: 17.0,
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                const Text(
                                  'Аудиозаписи',
                                  style: TextStyle(
                                    color: AppColors.fontColor,
                                    fontSize: 24.0,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: 'TTNorms',
                                  ),
                                ),
                                BlocBuilder<NavigationCubit, NavigationState>(
                                  builder: (context, state) {
                                    return GestureDetector(
                                      onTap: () {
                                        context
                                            .read<NavigationCubit>()
                                            .navigateTo(3);
                                        context.go('/audio_records');
                                      },
                                      child: const Text(
                                        'Открыть все',
                                        style: TextStyle(
                                          color: AppColors.fontColor,
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'TTNorms',
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            BlocBuilder<AudioRecordsScreenBloc,
                                AudioRecordsScreenState>(
                              builder: (context, state) {
                                return Expanded(
                                  child: ListView.builder(
                                    controller: _scrollController,
                                    itemCount: state.audioList.length,
                                    itemBuilder: (context, int index) {
                                      return Column(
                                        children: [
                                          AudioItemTile(
                                            audio: state.audioList[index],
                                            title: state.audioList[index].title,
                                            duration: '30 минут',
                                            onRename: () {
                                              print(
                                                "Переименовать натиснуто",
                                              );
                                            },
                                            onSave: (controller) {
                                              print("Поделиться натиснуто");
                                            },
                                            onCancel: () {
                                              print("Поделиться натиснуто");
                                            },
                                            onDelete: () {
                                              ShowDeleteDialog.show(
                                                'Ваш файл перенесется в папку “Недавно удаленные”. Через 15 дней он исчезнет.',
                                                context,
                                                onYes: () {
                                                  context
                                                      .read<
                                                          AudioRecordsScreenBloc>()
                                                      .add(
                                                        DeleteAudioRecordsScreenStateEvent(
                                                          state.audioList[index]
                                                              .title,
                                                        ),
                                                      );
                                                },
                                              );
                                            },
                                            onChoose: () {
                                              context.go(
                                                '/collection/info/choose',
                                              );
                                            },
                                            onShare: () {
                                              context
                                                  .read<
                                                      AudioRecordsScreenBloc>()
                                                  .add(
                                                    ShareAudioRecordsScreenStateEvent(
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
                            ),
                            // const SizedBox(
                            //   height: 54.0,
                            // ),
                            // Padding(
                            //   padding: const EdgeInsets.symmetric(
                            //       horizontal: 45.0),
                            //   child: Text(
                            //     textAlign: TextAlign.center,
                            //     'Как только ты запишешь аудио, онo появится здесь.',
                            //     style: TextStyle(
                            //       color:
                            //           AppColors.fontColor.withOpacity(0.3),
                            //       fontSize: 20.0,
                            //       fontWeight: FontWeight.w500,
                            //       fontFamily: 'TTNorms',
                            //     ),
                            //   ),
                            // ),
                            // SvgPicture.asset('assets/icons/ArrowDown.svg'),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
