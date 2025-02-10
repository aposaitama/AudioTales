import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box_avada/screens/record_screen/listen/widgets/circle_painter.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';
import 'package:memory_box_avada/screens/root_screen/widgets/line_painter.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  Duration parseDuration(String durationString) {
    List<String> components = durationString.split(':');
    List<String> secondsAndMilliseconds = components[2].split('.');

    int hours = int.parse(components[0]);
    int minutes = int.parse(components[1]);
    int seconds = int.parse(secondsAndMilliseconds[0]);

    // Отримуємо тільки мілісекунди
    int milliseconds = (int.parse(secondsAndMilliseconds[1]) ~/ 1000);

    print('Duration is ${Duration(
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      milliseconds: milliseconds,
    )}');

    return Duration(
      hours: hours,
      minutes: minutes,
      seconds: seconds,
      milliseconds: milliseconds,
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MiniPlayerBloc, MiniPlayerBlocState>(
      builder: (context, state) {
        // final Duration parsedDuration = parseDuration(
        //     state.audioRecordsList[state.currentPlayingIndex].duration);
        // print(state.position.toString());
        // print(state.audioRecordsList[state.currentPlayingIndex].duration);
        return state.status == MiniPlayerStatus.playing ||
                state.status == MiniPlayerStatus.paused
            ? Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        begin: Alignment.bottomLeft,
                        end: Alignment.topRight,
                        colors: [
                          AppColors.purpleColor,
                          Color.fromRGBO(111, 106, 164, 1)
                        ]),
                    borderRadius: BorderRadius.circular(41),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4, right: 24.0),
                          child: state.status == MiniPlayerStatus.playing
                              ? GestureDetector(
                                  onTap: () => context
                                      .read<MiniPlayerBloc>()
                                      .add(const PauseMiniPlayerEvent()),
                                  child: SvgPicture.asset(
                                    'assets/icons/Pause.svg',
                                    colorFilter: const ColorFilter.mode(
                                        Colors.white, BlendMode.srcIn),
                                  ),
                                )
                              : GestureDetector(
                                  onTap: () => context
                                      .read<MiniPlayerBloc>()
                                      .add(const ResumeMiniPlayerEvent()),
                                  child: SvgPicture.asset(
                                    'assets/icons/Play.svg',
                                    colorFilter: const ColorFilter.mode(
                                        Colors.white, BlendMode.srcIn),
                                  ),
                                ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                state
                                    .audioRecordsList[state.currentPlayingIndex]
                                    .title,
                                style: AppTextStyles.subtitleWhite,
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                              CustomPaint(
                                size: Size(
                                  MediaQuery.of(context).size.width - 160,
                                  6,
                                ),
                                painter: LinePainter(
                                  parseDuration(state
                                      .audioRecordsList[
                                          state.currentPlayingIndex]
                                      .duration),
                                  state.position,
                                ),
                              ),
                              const SizedBox(
                                height: 3.0,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "${(state.position.inMinutes).toString().padLeft(2, '0')}:${(state.position.inSeconds % 60).toString().padLeft(2, '0')}",
                                    style: AppTextStyles.timeTextWhite,
                                  ),
                                  Text(
                                    "${(parseDuration(state.audioRecordsList[state.currentPlayingIndex].duration).inMinutes).toString().padLeft(2, '0')}:${(parseDuration(state.audioRecordsList[state.currentPlayingIndex].duration).inSeconds % 60).toString().padLeft(2, '0')}",
                                    style: AppTextStyles.timeTextWhite,
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18, left: 24.0),
                          child: GestureDetector(
                              onTap: () => context
                                  .read<MiniPlayerBloc>()
                                  .add(const MiniPlayerBlocEvent.close()),
                              child: SvgPicture.asset(
                                  'assets/icons/FluentArrow.svg')),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            : const SizedBox.shrink();
      },
    );
  }
}
