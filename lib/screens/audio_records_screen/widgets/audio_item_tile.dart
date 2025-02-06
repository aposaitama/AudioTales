import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/collection_screen/add_collection_screen/choose_audio_records/choose_audio_records.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class AudioItemTile extends StatelessWidget {
  final String title;
  final String duration;
  final Color? color;
  final AudioRecordsModel audio;

  const AudioItemTile(
      {super.key,
      required this.title,
      required this.duration,
      this.color,
      required this.audio});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(41),
            border: Border.all(
                width: 1.0, color: AppColors.fontColor.withOpacity(0.2))),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () => context
                        .read<MiniPlayerBloc>()
                        .add(MiniPlayerBlocEvent.open([audio])),
                    child: SvgPicture.asset(
                      'assets/icons/Play.svg',
                      colorFilter: ColorFilter.mode(
                          color ?? AppColors.blueColor, BlendMode.srcIn),
                    ),
                  ),
                  const SizedBox(
                    width: 23.0,
                  ),
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
                      const SizedBox(
                        height: 4.0,
                      ),
                      Text(
                        duration,
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
                child: SvgPicture.asset('assets/icons/SmalDots.svg'),
              )
            ],
          ),
        ));
  }
}
