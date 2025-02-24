import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';

class CustomSlider extends StatelessWidget {
  const CustomSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 2.0,
        overlayShape: SliderComponentShape.noThumb,
        thumbColor: Colors.white,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
        inactiveTrackColor: Colors.white,
        activeTrackColor: Colors.white,
      ),
      child: BlocBuilder<MiniPlayerBloc, MiniPlayerBlocState>(
        builder: (context, state) {
          return Slider(
            value: state.position.inMilliseconds.toDouble(),
            min: 0.00,
            max: state.audioRecordsList[state.currentPlayingIndex].duration
                    .inMilliseconds
                    .toDouble() +
                100,
            onChanged: (value) {
              context.read<MiniPlayerBloc>().add(
                    UpdateSliderLineMiniPlayerEvent(value.toInt()),
                  );
            },
          );
        },
      ),
    );
  }
}

class CustomSliderTrackShape extends RoundedRectSliderTrackShape {
  const CustomSliderTrackShape();
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final trackHeight = sliderTheme.trackHeight;
    final trackLeft = offset.dx;
    final trackTop = offset.dy + (parentBox.size.height - trackHeight!) / 2;
    final trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
