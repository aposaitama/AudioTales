import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/screens/audio_records_screen/widgets/audio_item_tile.dart';
import 'package:memory_box_avada/screens/home_screen/widgets/custom_home_top_clip_path.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class HomeScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const HomeScreen({
    super.key,
    required this.scaffoldKey,
  });

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
                onPressed: () => scaffoldKey.currentState?.openDrawer(),
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
                                    context
                                        .read<NavigationCubit>()
                                        .navigateTo(1);
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
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 24.0,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 240,
                              width:
                                  MediaQuery.of(context).size.width / 2 - 22.5,
                              decoration: BoxDecoration(
                                color: AppColors.mainColor.withOpacity(0.8),
                                borderRadius: BorderRadius.circular(12),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    offset: const Offset(0, 5),
                                    blurRadius: 10,
                                    spreadRadius: 1,
                                  ),
                                ],
                              ),
                            ),
                            Column(
                              children: [
                                Container(
                                  height: 112,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      22.5,
                                  decoration: BoxDecoration(
                                    color:
                                        AppColors.orangeColor.withOpacity(0.9),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(0, 10),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 15.0,
                                ),
                                Container(
                                  height: 112,
                                  width: MediaQuery.of(context).size.width / 2 -
                                      22.5,
                                  decoration: BoxDecoration(
                                    color:
                                        AppColors.blueColor.withOpacity(0.85),
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black.withOpacity(0.1),
                                        offset: const Offset(0, 5),
                                        blurRadius: 10,
                                        spreadRadius: 1,
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            )
                          ],
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
                              right: 17.0),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              Expanded(
                                child: ListView.builder(
                                  itemCount: 20,
                                  itemBuilder: (context, int index) {
                                    return const Column(
                                      children: [
                                        AudioItemTile(
                                          title: 'Малышь Кокки 1',
                                          duration: '30 минут',
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              )
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
        ));
  }
}
