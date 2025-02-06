import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class MiniPlayer extends StatefulWidget {
  const MiniPlayer({super.key});

  @override
  State<MiniPlayer> createState() => _MiniPlayerState();
}

class _MiniPlayerState extends State<MiniPlayer> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MiniPlayerBloc, MiniPlayerBlocState>(
      builder: (context, state) {
        return state.status == MiniPlayerStatus.playing ||
                state.status == MiniPlayerStatus.paused
            ? Padding(
                padding: const EdgeInsets.only(bottom: 3),
                child: Container(
                  height: 75,
                  decoration: BoxDecoration(
                    color: AppColors.purpleColor,
                    borderRadius: BorderRadius.circular(41),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 4),
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
                                      .add(const PauseMiniPlayerEvent()),
                                  child: SvgPicture.asset(
                                    'assets/icons/Play.svg',
                                    colorFilter: const ColorFilter.mode(
                                        Colors.white, BlendMode.srcIn),
                                  ),
                                ),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Малішь коки 1',
                              style: AppTextStyles.subtitleWhite,
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 18),
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
