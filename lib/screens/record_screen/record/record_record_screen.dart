import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_event.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_state.dart';
import 'package:memory_box_avada/screens/record_screen/widgets/audio_wave.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class RecordScreenRecordAction extends StatefulWidget {
  const RecordScreenRecordAction({super.key});

  @override
  State<RecordScreenRecordAction> createState() =>
      _RecordScreenRecordActionState();
}

class _RecordScreenRecordActionState extends State<RecordScreenRecordAction> {
  final List<double> decibelValues = [];
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecordBloc, RecordState>(
      builder: (context, state) {
        if (state.status == RecordStatus.inProgress) {
          decibelValues.add(state.decibels);
          final elemCount =
              ((MediaQuery.of(context).size.width - 15) / 4.3).round();
          if (decibelValues.length > elemCount) {
            decibelValues.removeAt(0);
          }
        }
        return Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFF6F6F6),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 30.0,
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 7.5),
                              child: GestureDetector(
                                  onTap: () => {
                                        context.read<RecordStatusBloc>().add(
                                            const ListeningRecordStatusEvent()),
                                        context
                                            .read<RecordBloc>()
                                            .add(RecordEvent.stopRecording())
                                      },
                                  child: const Text('Готово')),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 48.0,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(right: 30.0),
                              child: Text(
                                'Запись',
                                style: AppTextStyles.body,
                              ),
                            ),
                            CustomPaint(
                              size: const Size(double.infinity, 200),
                              painter: SoundWavePainter(
                                  decibelValues: decibelValues),
                            ),
                            if (state.status == RecordStatus.inProgress) ...[
                              Padding(
                                padding: const EdgeInsets.only(right: 30.0),
                                child: Text(
                                  state.duration
                                      .toString()
                                      .split('.')
                                      .first
                                      .padLeft(8, "0"),
                                ),
                              )
                            ],
                            Padding(
                              padding: const EdgeInsets.only(right: 30.0),
                              child: Column(
                                children: [
                                  if (state.status ==
                                      RecordStatus.inProgress) ...[
                                    GestureDetector(
                                      onTap: () => context
                                          .read<RecordBloc>()
                                          .add(const PauseRecordingEvent()),
                                      child: SvgPicture.asset(
                                        'assets/icons/Pause.svg',
                                        height: 80.0,
                                        width: 80.0,
                                        colorFilter: const ColorFilter.mode(
                                            AppColors.orangeColor,
                                            BlendMode.srcIn),
                                      ),
                                    ),
                                  ],
                                  if (state.status == RecordStatus.initial ||
                                      state.status == RecordStatus.stopped) ...[
                                    GestureDetector(
                                      onTap: () => context
                                          .read<RecordBloc>()
                                          .add(const StartRecordingEvent()),
                                      child: SvgPicture.asset(
                                        'assets/icons/Play.svg',
                                        height: 80.0,
                                        width: 80.0,
                                        colorFilter: const ColorFilter.mode(
                                            AppColors.orangeColor,
                                            BlendMode.srcIn),
                                      ),
                                    ),
                                  ],
                                  if (state.status == RecordStatus.paused) ...[
                                    GestureDetector(
                                      onTap: () => context
                                          .read<RecordBloc>()
                                          .add(const ResumeRecordingEvent()),
                                      child: SvgPicture.asset(
                                        'assets/icons/Play.svg',
                                        height: 80.0,
                                        width: 80.0,
                                        colorFilter: const ColorFilter.mode(
                                            AppColors.orangeColor,
                                            BlendMode.srcIn),
                                      ),
                                    ),
                                  ],
                                  Container(
                                    width: 4.0,
                                    height: 25.0,
                                    decoration: const BoxDecoration(
                                        color: AppColors.orangeColor),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
