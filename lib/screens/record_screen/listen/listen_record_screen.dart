import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/screens/auth_screen/register_screen/bloc/register_screen_bloc_state.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/dialogButton.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_event.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_state.dart';
import 'package:memory_box_avada/screens/record_screen/listen/widgets/circle_painter.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class ListenRecordScreen extends StatefulWidget {
  const ListenRecordScreen({super.key});

  @override
  State<ListenRecordScreen> createState() => _ListenRecordScreenState();
}

class _ListenRecordScreenState extends State<ListenRecordScreen> {
  final bool? isAnonymous = locator<FirebaseAuth>().currentUser?.isAnonymous;

  TextEditingController title = TextEditingController(text: 'Аудиозапись');
  @override
  Widget build(BuildContext context) {
    print(isAnonymous);
    return BlocProvider(
      create: (context) => ListenRecordBloc(),
      child: BlocBuilder<ListenRecordBloc, ListenRecordState>(
        builder: (context, state) {
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
                      right: 30.0,
                      bottom: 25.0,
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SvgPicture.asset('assets/icons/Share.svg'),
                                const SizedBox(
                                  width: 30.0,
                                ),
                                GestureDetector(
                                    onTap: () {
                                      context
                                          .read<ListenRecordBloc>()
                                          .add(DownloadListenRecordEvent());
                                    },
                                    child: SvgPicture.asset(
                                        'assets/icons/SaveAs.svg')),
                                const SizedBox(
                                  width: 30.0,
                                ),
                                SvgPicture.asset(
                                  'assets/icons/DeleteRecord.svg',
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: GestureDetector(
                                onTap: () => {
                                  if (isAnonymous!)
                                    {
                                      showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                          content: const Padding(
                                            padding: EdgeInsets.only(top: 50.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Доступ заборонено',
                                                  style: AppTextStyles.titleRed,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  maxLines: 1,
                                                ),
                                                SizedBox(height: 24.0),
                                                Text(
                                                  textAlign: TextAlign.center,
                                                  'Будь ласка, зареєструйтеся, щоб отримати доступ до збереження аудіозаписів у хмару.',
                                                  style: AppTextStyles
                                                      .subtitleTall,
                                                ),
                                              ],
                                            ),
                                          ),
                                          actions: [
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Dialogbutton(
                                                    text: 'Назад',
                                                    backgroundColor:
                                                        AppColors.purpleColor,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                      ),
                                    }
                                  else if (!isAnonymous!)
                                    {
                                      context
                                          .read<ListenRecordBloc>()
                                          .add(AddRecordNameEvent(title.text)),
                                      context
                                          .read<ListenRecordBloc>()
                                          .add(const ClosePlayingEvent()),
                                      context.read<RecordStatusBloc>().add(
                                            const RecordStatusEvent.recording(),
                                          ),
                                      context.pop(),
                                    }
                                },
                                child: const Text('Сохранить'),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 48.0,
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 30.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextField(
                                  controller: title,
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    hintStyle: TextStyle(
                                      color: AppColors.fontColor,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 20.0,
                                      fontFamily: 'TTNorms',
                                    ),
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 15.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                                Column(
                                  children: [
                                    CustomPaint(
                                      size: const Size(double.infinity, 40),
                                      painter: CirclePainter(
                                        state.duration,
                                        state.position,
                                      ),
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${(state.position.inMinutes).toString().padLeft(2, '0')}:${(state.position.inSeconds % 60).toString().padLeft(2, '0')}",
                                        ),
                                        Text(
                                          "${(state.duration.inMinutes).toString().padLeft(2, '0')}:${(state.duration.inSeconds % 60).toString().padLeft(2, '0')}",
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    SvgPicture.asset(
                                      'assets/icons/Minus15.svg',
                                    ),
                                    const SizedBox(
                                      width: 60.0,
                                    ),
                                    if (state.status == ListenStatus.initial ||
                                        state.status == ListenStatus.stop) ...[
                                      GestureDetector(
                                        onTap: () async {
                                          context.read<ListenRecordBloc>().add(
                                                const StartPlayingEvent(
                                                  Duration(),
                                                ),
                                              );
                                        },
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
                                    if (state.status ==
                                            ListenStatus.inProgress ||
                                        state.status ==
                                            ListenStatus.resume) ...[
                                      GestureDetector(
                                        onTap: () async {
                                          context.read<ListenRecordBloc>().add(
                                                const PausePlayingEvent(),
                                              );
                                        },
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
                                    if (state.status == ListenStatus.pause) ...[
                                      GestureDetector(
                                        onTap: () async {
                                          context.read<ListenRecordBloc>().add(
                                                const ResumePlayingEvent(),
                                              );
                                        },
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
                                        'assets/icons/Add15.svg',
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
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
