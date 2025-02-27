import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_state.dart';
import 'package:memory_box_avada/screens/home_screen/bloc/home_screen_bloc.dart';
import 'package:memory_box_avada/screens/home_screen/bloc/home_screen_bloc_event.dart';
import 'package:memory_box_avada/screens/home_screen/widgets/colection_preview.dart';
import 'package:memory_box_avada/screens/home_screen/widgets/custom_home_top_clip_path.dart';
import 'package:memory_box_avada/screens/home_screen/widgets/home_screen_audio_builder.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/widgets/access_denied_dialog.dart';

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
  final isAnonymous = locator<FirebaseAuth>().currentUser?.isAnonymous;
  late ScrollController _scrollController;

  void _scrollListener() {
    final totalItems = context.read<HomeScreenBloc>().state.audioList.length;

    final audioCount =
        context.read<UserBloc>().state.userModel?.audiosCount ?? 0;

    final currentIndex = _scrollController.position.pixels /
        (_scrollController.position.maxScrollExtent / totalItems);

    if (currentIndex >= totalItems - 1 && totalItems < audioCount) {
      context
          .read<HomeScreenBloc>()
          .add(const LoadNextPageHomeScreenBlocEvent());
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
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
                                  if (isAnonymous!) {
                                    AccessDeniedDialog.show(context);
                                  } else {
                                    context
                                        .read<NavigationCubit>()
                                        .navigateTo(1);
                                    context.go('/collection');
                                  }
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
                                        if (isAnonymous!) {
                                          AccessDeniedDialog.show(context);
                                        } else {
                                          context
                                              .read<NavigationCubit>()
                                              .navigateTo(3);
                                          context.go('/audio_records');
                                        }
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
                            !isAnonymous!
                                ? HomeScreenAudioBuilder(
                                    controller: _scrollController,
                                  )
                                : Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 45.0,
                                          ),
                                          child: Text(
                                            textAlign: TextAlign.center,
                                            !isAnonymous!
                                                ? 'Как только ты запишешь аудио, онo появится здесь.'
                                                : 'Анонимные пользователи не могут сохранять аудио в облако.',
                                            style: TextStyle(
                                              color: AppColors.fontColor
                                                  .withOpacity(0.3),
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.w500,
                                              fontFamily: 'TTNorms',
                                            ),
                                          ),
                                        ),
                                        !isAnonymous!
                                            ? SvgPicture.asset(
                                                'assets/icons/ArrowDown.svg',
                                              )
                                            : const SizedBox.shrink(),
                                      ],
                                    ),
                                  ),
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
