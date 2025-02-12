import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class RunAllCollectionAudios extends StatefulWidget {
  const RunAllCollectionAudios({super.key});

  @override
  State<RunAllCollectionAudios> createState() => _RunAllCollectionAudiosState();
}

class _RunAllCollectionAudiosState extends State<RunAllCollectionAudios> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MiniPlayerBloc, MiniPlayerBlocState>(
      builder: (context, state) {
        bool isPlayingAll = state.isPlayingAll;
        return Container(
          width: 155,
          height: 46,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(41),
              color: Color.fromRGBO(246, 246, 246, 0.16)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding:
                    const EdgeInsets.only(left: 1.0, top: 3.0, bottom: 3.0),
                child: SvgPicture.asset(
                  isPlayingAll
                      ? 'assets/icons/Pause.svg'
                      : 'assets/icons/Play.svg',
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 8.0),
                child: Text(
                  isPlayingAll ? "Остановить" : 'Запустить все',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'TTNorms',
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
