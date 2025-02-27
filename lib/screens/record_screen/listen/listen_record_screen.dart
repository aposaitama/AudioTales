import 'package:bot_toast/bot_toast.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/di/service_locator.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/dialog_button.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/show_delete_dialog.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/bloc/record_status_event.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_event.dart';
import 'package:memory_box_avada/screens/record_screen/listen/bloc/listen_screen_state.dart';
import 'package:memory_box_avada/screens/record_screen/listen/widgets/circle_painter.dart';
import 'package:memory_box_avada/screens/record_screen/listen/widgets/custom_back_diaog.dart';
import 'package:memory_box_avada/screens/record_screen/listen/widgets/custom_listen_page_slider.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_bloc.dart';
import 'package:memory_box_avada/screens/record_screen/record/bloc/record_screen_state.dart';
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
  void initState() {
    context.read<ListenRecordBloc>().add(const InitialPlayingEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ListenRecordBloc, ListenRecordState>(
      listener: (context, state) {
        if (state.status == ListenStatus.close) {
          context.pop();
        }
        if (state.downloadStatus == DownloadListenStatus.successful) {
          BotToast.showText(text: 'Файл было загружено.');
        }
        if (state.isAudioTitleExist) {
          BotToast.showText(
            text: 'Помилка збереження аудіо. Файл з такою назвою вже існує.',
          );
        }
      },
      child: BlocBuilder<ListenRecordBloc, ListenRecordState>(
        builder: (context, state) {
          state.duration;
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
                                GestureDetector(
                                  onTap: () {
                                    context
                                        .read<ListenRecordBloc>()
                                        .add(const ShareListenRecordEvent());
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/Share.svg',
                                  ),
                                ),
                                const SizedBox(
                                  width: 30.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    context
                                        .read<ListenRecordBloc>()
                                        .add(const DownloadListenRecordEvent());
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/SaveAs.svg',
                                  ),
                                ),
                                const SizedBox(
                                  width: 30.0,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    ShowDeleteDialog.show(
                                      'Ваш записаний файл буде видалено назавжди.',
                                      context,
                                      onYes: () {
                                        context.read<ListenRecordBloc>().add(
                                              const DeleteListenRecordEvent(),
                                            );
                                      },
                                    );
                                  },
                                  child: SvgPicture.asset(
                                    'assets/icons/DeleteRecord.svg',
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 5.0),
                              child: GestureDetector(
                                onTap: () => {
                                  if (isAnonymous!)
                                    {
                                      CustomBackDialog.show(
                                        'Доступ заборонено',
                                        'Будь ласка, зареєструйтеся, щоб отримати доступ до збереження аудіозаписів у хмару.',
                                        context,
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
                                      // context.read<RecordStatusBloc>().add(
                                      //       const RecordStatusEvent.recording(),
                                      //     ),
                                      // context.pop(),
                                    },
                                },
                                child: const Text(
                                  'Сохранить',
                                  style: AppTextStyles.blackTitle,
                                ),
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
                                  style: AppTextStyles.body.copyWith(
                                    decoration: TextDecoration.underline,
                                  ),
                                  textAlign: TextAlign.center,
                                  decoration: const InputDecoration(
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 20.0,
                                      vertical: 15.0,
                                    ),
                                    border: OutlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                  onChanged: (value) =>
                                      context.read<ListenRecordBloc>().add(
                                            AddRecordNameEvent(
                                              title.text,
                                            ),
                                          ),
                                ),
                                Column(
                                  children: [
                                    // CustomPaint(
                                    //   size: const Size(double.infinity, 40),
                                    //   painter: CirclePainter(
                                    //     state.duration,
                                    //     state.position,
                                    //   ),
                                    // ),
                                    const CustomListenPageSlider(),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${(state.position.inMinutes).toString().padLeft(2, '0')}:${(state.position.inSeconds % 60).toString().padLeft(2, '0')}",
                                          style: AppTextStyles.blackTitle,
                                        ),
                                        // BlocBuilder<RecordBloc, RecordState>(
                                        //   builder: (context, state) {
                                        //     return Text(
                                        //       "${(state.duration.inMinutes).toString().padLeft(2, '0')}:${(state.duration.inSeconds % 60).toString().padLeft(2, '0')}",
                                        //       style: AppTextStyles.blackTitle,
                                        //     );
                                        //   },
                                        // ),
                                        Text(
                                          "${(state.duration.inMinutes).toString().padLeft(2, '0')}:${(state.duration.inSeconds % 60).toString().padLeft(2, '0')}",
                                          style: AppTextStyles.blackTitle,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    GestureDetector(
                                      onTap: () {
                                        context.read<ListenRecordBloc>().add(
                                            AdjustAudioPositionEvent(false));
                                      },
                                      child: SvgPicture.asset(
                                        'assets/icons/Minus15.svg',
                                      ),
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
                                            AdjustAudioPositionEvent(true));
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
