import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class AudioItemTile extends StatelessWidget {
  final String title;
  final String duration;
  final Color? color;
  final AudioRecordsModel audio;

  const AudioItemTile({
    super.key,
    required this.title,
    required this.duration,
    this.color,
    required this.audio,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MiniPlayerBloc, MiniPlayerBlocState>(
      builder: (context, state) {
        bool isPlaying = state.audioRecordsList.isNotEmpty &&
            state.currentPlayingIndex < state.audioRecordsList.length &&
            state.audioRecordsList[state.currentPlayingIndex] == audio &&
            state.status == MiniPlayerStatus.playing;

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(41),
            border: Border.all(
              width: 1.0,
              color: AppColors.fontColor.withOpacity(0.2),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        final bloc = context.read<MiniPlayerBloc>();

                        if (isPlaying) {
                          if (state.status == MiniPlayerStatus.playing) {
                            bloc.add(const MiniPlayerBlocEvent.pause());
                          } else if (state.status == MiniPlayerStatus.paused) {
                            bloc.add(const MiniPlayerBlocEvent.resume());
                          }
                        } else {
                          if (state.status == MiniPlayerStatus.paused &&
                              state.audioRecordsList.contains(audio)) {
                            bloc.add(const MiniPlayerBlocEvent.resume());
                          } else {
                            bloc.add(MiniPlayerBlocEvent.open([audio]));
                          }
                        }
                      },
                      child: SvgPicture.asset(
                        isPlaying
                            ? 'assets/icons/Pause.svg'
                            : 'assets/icons/Play.svg',
                        colorFilter: ColorFilter.mode(
                          color ?? AppColors.blueColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    const SizedBox(width: 23.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            color: AppColors.fontColor,
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            height: 1.0,
                            fontFamily: 'TTNorms',
                          ),
                        ),
                        const SizedBox(height: 4.0),
                        Text(
                          audio.duration,
                          style: TextStyle(
                            color: AppColors.fontColor.withOpacity(0.5),
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            height: 1.0,
                            letterSpacing: 1,
                            fontFamily: 'TTNorms',
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(right: 9.0),
                    child: PopupMenuButton<String>(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      color: Colors.white,
                      offset: const Offset(-10, 45),
                      icon: SvgPicture.asset('assets/icons/SmalDots.svg'),
                      onSelected: (value) {
                        if (value == 'edit') {
                        } else if (value == 'delete') {
                          context.read<AudioRecordsScreenBloc>().add(
                                DeleteAudioRecordsScreenStateEvent(audio.title),
                              );
                        } else if (value == 'choose') {
                          context.go('/collection/info/choose');
                        }
                      },
                      itemBuilder: (context) => [
                        const PopupMenuItem(
                          value: 'edit',
                          child: Text(
                            'Переименовать',
                            style: AppTextStyles.subtitleTall,
                          ),
                        ),
                        const PopupMenuItem(
                          value: 'choose',
                          child: Text(
                            'Добавить в подборку',
                            style: AppTextStyles.subtitleTall,
                          ),
                        ),
                        const PopupMenuItem(
                          value: 'delete',
                          child: Text(
                            'Удалить',
                            style: AppTextStyles.subtitleTall,
                          ),
                        ),
                        const PopupMenuItem(
                          value: 'share',
                          child: Text(
                            'Поделиться',
                            style: AppTextStyles.subtitleTall,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        );
      },
    );
  }
}
