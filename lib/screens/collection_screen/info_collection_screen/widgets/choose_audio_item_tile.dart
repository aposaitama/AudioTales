import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_state.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';
import 'package:memory_box_avada/sources/duration_helper.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class ChooseAudioItemTile extends StatelessWidget {
  final Color? color;
  final AudioRecordsModel audio;
  final VoidCallback onCircleTap;

  const ChooseAudioItemTile({
    super.key,
    this.color,
    required this.audio,
    required this.onCircleTap,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MiniPlayerBloc, MiniPlayerBlocState>(
      builder: (context, state) {
        bool isPlaying = state.audioRecordsList.isNotEmpty &&
            state.currentPlayingIndex < state.audioRecordsList.length &&
            state.audioRecordsList[state.currentPlayingIndex].title ==
                audio.title &&
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
                          if (state.status == MiniPlayerStatus.paused) {
                            bloc.add(
                              const MiniPlayerBlocEvent.resume(),
                            );
                          } else {
                            bloc.add(
                              MiniPlayerBlocEvent.open(
                                [
                                  AudioRecordsModel(
                                    id: audio.id,
                                    title: audio.title,
                                    url: audio.url,
                                    duration: audio.duration,
                                  ),
                                ],
                              ),
                            );
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
                          audio.title,
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
                          formatDuration(audio.duration),
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
                BlocBuilder<InfoCollectionBloc, InfoCollectionBlocState>(
                  builder: (context, state) {
                    final isSelected = state.selectedAudios.contains(audio);

                    return GestureDetector(
                      onTap: onCircleTap,
                      child: Container(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(width: 2.0, color: Colors.black),
                        ),
                        child: isSelected
                            ? Center(
                                child: SvgPicture.asset(
                                  'assets/icons/Check_Box_Done.svg',
                                ),
                              )
                            : null,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
