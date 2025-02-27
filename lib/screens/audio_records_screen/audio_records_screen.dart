import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';
import 'package:memory_box_avada/screens/audio_records_screen/widgets/audio_item_tile.dart';
import 'package:memory_box_avada/screens/audio_records_screen/widgets/run_all_records.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/show_delete_dialog.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc_event.dart';
import 'package:memory_box_avada/screens/profile_screen/bloc/user_bloc_state.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';
import 'package:memory_box_avada/utils/duration_helper.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class AudioRecordsScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const AudioRecordsScreen({super.key, required this.scaffoldKey});

  @override
  State<AudioRecordsScreen> createState() => _AudioRecordsScreenState();
}

class _AudioRecordsScreenState extends State<AudioRecordsScreen> {
  // late ScrollController _scrollController;
  final FocusNode _focus = FocusNode();

  // void _scrollListener() {
  //   final totalItems =
  //       context.read<AudioRecordsScreenBloc>().state.audioList.length;
  //   final audioCount =
  //       context.read<UserBloc>().state.userModel?.audiosCount ?? 0;

  //   final currentIndex = _scrollController.position.pixels /
  //       (_scrollController.position.maxScrollExtent / totalItems);
  //   print(currentIndex);
  //   if (currentIndex >= totalItems - 1 && totalItems < audioCount) {
  //     context
  //         .read<AudioRecordsScreenBloc>()
  //         .add(const LoadNextPageAudioRecordsScreenStateEvent());
  //   }
  // }

  @override
  void initState() {
    super.initState();
    // _scrollController = ScrollController();
    // _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Аудиозаписи\n',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30.0,
              fontWeight: FontWeight.w700,
              height: 1.5,
              letterSpacing: 3,
              fontFamily: 'TTNorms',
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Все в одном месте',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                  letterSpacing: 1,
                  fontFamily: 'TTNorms',
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 65,
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
              onPressed: () => widget.scaffoldKey.currentState?.openDrawer(),
            ),
          ),
        ),
      ),
      body: BlocBuilder<AudioRecordsScreenBloc, AudioRecordsScreenState>(
        builder: (context, state) {
          List<AudioRecordsModel> audioList = state.audioList;
          if (state.status == AudioRecordsScreenStatus.loading) {
            context
                .read<AudioRecordsScreenBloc>()
                .add(const AudioRecordsScreenStateEvent.loaded([]));
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Column(
            children: [
              Stack(
                children: [
                  const CustomProfileTopClipPath(
                    backgroundColor: AppColors.blueColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40.0,
                      left: 16.0,
                      right: 16.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        BlocBuilder<UserBloc, UserBlocState>(
                          builder: (context, state) {
                            return Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '${state.userModel?.audiosCount ?? 0} аудио',
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14.0,
                                    fontWeight: FontWeight.w500,
                                    height: 1.0,
                                    fontFamily: 'TTNorms',
                                  ),
                                ),
                                SizedBox(
                                  width: 80.0,
                                  child: Text(
                                    formatDuration(
                                      (state.userModel?.duration ??
                                          const Duration()),
                                    ),
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.w500,
                                      height: 1.0,
                                      fontFamily: 'TTNorms',
                                    ),
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                        BlocBuilder<MiniPlayerBloc, MiniPlayerBlocState>(
                          builder: (context, state) {
                            return GestureDetector(
                              onTap: () {
                                context.read<MiniPlayerBloc>().add(
                                      MiniPlayerBlocEvent.playAll(
                                        !state.isPlayingAll,
                                      ),
                                    );
                                if (!state.isPlayingAll) {
                                  context.read<MiniPlayerBloc>().add(
                                        MiniPlayerBlocEvent.open(audioList),
                                      );
                                } else {
                                  context.read<MiniPlayerBloc>().add(
                                        const MiniPlayerBlocEvent.close(),
                                      );
                                }
                              },
                              child: const RunAllRecords(),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 11.0,
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                  ),
                  child: ListView.builder(
                    // controller: _scrollController,
                    itemCount: state.audioList.length,
                    itemBuilder: (context, int index) {
                      final audio = state.audioList[index];
                      return Column(
                        children: [
                          Focus(
                            focusNode: _focus,
                            onFocusChange: (value) {
                              if (!value) {
                                print('focus change');
                                // FocusManager.instance.primaryFocus?.unfocus();
                                _focus.unfocus();
                                context.read<AudioRecordsScreenBloc>().add(
                                      const ChangePopupAudioRecordsScreenStateEvent(
                                        AudioPopupStatus.initial,
                                      ),
                                    );
                                context.read<AudioRecordsScreenBloc>().add(
                                      const CancelEditingAudioRecordsScreenStateEvent(),
                                    );
                              }
                            },
                            child: AudioItemTile(
                              audio: audio,
                              title: audio.title,
                              duration: '30 минут',
                              onRename: () {
                                WidgetsBinding.instance
                                    .addPostFrameCallback((_) {
                                  _focus.requestFocus();
                                });

                                context.read<AudioRecordsScreenBloc>().add(
                                      const ChangePopupAudioRecordsScreenStateEvent(
                                        AudioPopupStatus.editing,
                                      ),
                                    );
                                context.read<AudioRecordsScreenBloc>().add(
                                      EditAudioRecordsScreenStateEvent(
                                        audio.id,
                                      ),
                                    );
                              },
                              onDelete: () {
                                ShowDeleteDialog.show(
                                  'Ваш файл перенесется в папку “Недавно удаленные”. Через 15 дней он исчезнет.',
                                  context,
                                  onYes: () {
                                    context.read<AudioRecordsScreenBloc>().add(
                                          DeleteAudioRecordsScreenStateEvent(
                                            audio.title,
                                          ),
                                        );
                                  },
                                );
                              },
                              onChoose: () {
                                context.read<AudioRecordsScreenBloc>().add(
                                      ChooseAudioRecordsScreenStateEvent(
                                        [audio],
                                      ),
                                    );
                                context.read<NavigationCubit>().navigateTo(-1);

                                context.go(
                                  '/collection/info/chooseAudio',
                                );
                              },
                              onShare: () {
                                context.read<AudioRecordsScreenBloc>().add(
                                      ShareAudioRecordsScreenStateEvent(
                                        audio,
                                      ),
                                    );
                              },
                              onSave: (controller) {
                                context.read<AudioRecordsScreenBloc>().add(
                                      SaveAudioRecordsScreenStateEvent(
                                        controller.text,
                                      ),
                                    );
                              },
                              onCancel: () {
                                FocusManager.instance.primaryFocus?.unfocus();
                                context.read<AudioRecordsScreenBloc>().add(
                                      const ChangePopupAudioRecordsScreenStateEvent(
                                        AudioPopupStatus.initial,
                                      ),
                                    );
                                context.read<AudioRecordsScreenBloc>().add(
                                      const CancelEditingAudioRecordsScreenStateEvent(),
                                    );
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 10.0,
                          ),
                        ],
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
