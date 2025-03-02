import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_event.dart';
import 'package:memory_box_avada/screens/record_screen/listen/widgets/custom_back_diaog.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_state.dart';
import 'package:memory_box_avada/screens/record_screen/widgets/audio_wave.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/text_style.dart';

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
    return BlocProvider(
      create: (context) => RecordBloc(),
      child: BlocBuilder<RecordBloc, RecordState>(
        builder: (context, state) {
          if (state.status == RecordStatus.inProgress) {
            decibelValues.add(state.decibels);
            final elemCount =
                ((MediaQuery.of(context).size.width - 15) / 4).round();
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
                                    if (state.duration != Duration.zero)
                                      {
                                        context.read<RecordStatusBloc>().add(
                                              const ListeningRecordStatusEvent(),
                                            ),
                                        context.read<RecordBloc>().add(
                                              const RecordEvent.stopRecording(),
                                            ),
                                      }
                                    else
                                      {
                                        CustomBackDialog.show(
                                          'Виникла помилка',
                                          'Будь ласка, почніть запис, щоб отримати доступ до прослуховування.',
                                          context,
                                        ),
                                      },
                                  },
                                  child: const Text(
                                    'Готово',
                                    style: AppTextStyles.blackTitle,
                                  ),
                                ),
                              ),
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
                              const Text(
                                'Запись',
                                style: AppTextStyles.body,
                              ),
                              CustomPaint(
                                size: const Size(double.infinity, 200),
                                painter: SoundWavePainter(
                                  decibelValues: decibelValues,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: 10.0,
                                    height: 10.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: AppColors.redColor,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 8.0,
                                  ),
                                  Text(
                                    state.duration
                                        .toString()
                                        .split('.')
                                        .first
                                        .padLeft(8, "0"),
                                    style: AppTextStyles.blackTitle,
                                  ),
                                ],
                              ),
                              Column(
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
                                          BlendMode.srcIn,
                                        ),
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
                                          BlendMode.srcIn,
                                        ),
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
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                    ),
                                  ],
                                  Container(
                                    width: 4.0,
                                    height: 25.0,
                                    decoration: const BoxDecoration(
                                      color: AppColors.orangeColor,
                                    ),
                                  ),
                                ],
                              ),
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
      ),
    );
  }
}
