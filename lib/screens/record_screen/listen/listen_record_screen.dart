import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_event.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_state.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';
import 'package:path_provider/path_provider.dart';

class ListenRecordScreen extends StatefulWidget {
  const ListenRecordScreen({super.key});

  @override
  State<ListenRecordScreen> createState() => _ListenRecordScreenState();
}

class _ListenRecordScreenState extends State<ListenRecordScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListenRecordBloc, ListenRecordState>(
      builder: (context, state) {
        return Column(children: [
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
                  Text(state.toString()),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/icons/Share.svg'),
                            const SizedBox(
                              width: 30.0,
                            ),
                            SvgPicture.asset('assets/icons/SaveAs.svg'),
                            const SizedBox(
                              width: 30.0,
                            ),
                            SvgPicture.asset('assets/icons/DeleteRecord.svg')
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 5.0),
                          child: GestureDetector(
                              onTap: () => {
                                    context
                                        .read<ListenRecordBloc>()
                                        .add(const StopPlayingEvent()),
                                    context.read<RecordStatusBloc>().add(
                                        const RecordStatusEvent.recording())
                                  },
                              child: Text('Сохранить')),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 48.0,
                  ),
                  Text(state.duration.toString()),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Padding(
                          padding: EdgeInsets.only(right: 30.0, top: 50),
                          child: Text(
                            'Аудиозапись 1',
                            style: AppTextStyles.body,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 30.0),
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 25.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                SvgPicture.asset('assets/icons/Minus15.svg'),
                                const SizedBox(
                                  width: 60.0,
                                ),
                                if (state.status == ListenStatus.initial ||
                                    state.status == ListenStatus.stop) ...[
                                  GestureDetector(
                                    onTap: () async {
                                      context.read<ListenRecordBloc>().add(
                                            StartPlayingEvent(const Duration()),
                                          );
                                    },
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
                                if (state.status == ListenStatus.inProgress ||
                                    state.status == ListenStatus.resume) ...[
                                  GestureDetector(
                                    onTap: () async {
                                      context.read<ListenRecordBloc>().add(
                                            PausePlayingEvent(),
                                          );
                                    },
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
                                if (state.status == ListenStatus.pause) ...[
                                  GestureDetector(
                                    onTap: () async {
                                      context.read<ListenRecordBloc>().add(
                                            ResumePlayingEvent(),
                                          );
                                    },
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
                                const SizedBox(
                                  width: 60.0,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      context.read<ListenRecordBloc>().add(
                                            const Add15Event(),
                                          );
                                    },
                                    child: SvgPicture.asset(
                                        'assets/icons/Add15.svg')),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ))
        ]);
      },
    );
  }
}
