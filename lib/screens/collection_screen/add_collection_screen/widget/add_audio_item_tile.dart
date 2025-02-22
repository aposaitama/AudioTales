import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/models/deleted_records_model.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc.dart';
import 'package:memory_box_avada/screens/recently_deleted_screen/recently_deleted_bloc/recently_deleted_bloc_state.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';
import 'package:memory_box_avada/utils/duration_helper.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class AddAudioItemTile extends StatelessWidget {
  final Color? color;
  final AudioRecordsModel audio;
  final VoidCallback onDelete;

  const AddAudioItemTile({
    super.key,
    this.color,
    required this.audio,
    required this.onDelete,
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
                                    creationTime: DateTime.now(),
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
                GestureDetector(
                  onTap: onDelete,
                  child: Padding(
                    padding: const EdgeInsets.only(right: 15.0),
                    child: SvgPicture.asset('assets/icons/Delete.svg'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
