import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_state.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class CustomListenPageSlider extends StatelessWidget {
  const CustomListenPageSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 2.0,
        overlayShape: SliderComponentShape.noThumb,
        thumbColor: AppColors.fontColor,
        thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
        inactiveTrackColor: AppColors.fontColor,
        activeTrackColor: AppColors.fontColor,
      ),
      child: BlocBuilder<ListenRecordBloc, ListenRecordState>(
        builder: (context, state) {
          return Slider(
            value: state.position.inMilliseconds.toDouble(),
            min: 0.00,
            max: state.duration.inMilliseconds.toDouble() + 100,
            onChanged: (value) {
              context.read<ListenRecordBloc>().add(
                    UpdateCircleEvent(value.toInt()),
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
