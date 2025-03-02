import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_event.dart';
import 'package:memory_box_avada/screens/root_screen/mini_player_bloc/mini_player_bloc_state.dart';
import 'package:memory_box_avada/utils/duration_helper.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/text_style.dart';

enum PopupValues {
  edit,
  save,
  cancel,
  addToCollection,
  delete,
  share,
}

class AudioItemTile extends StatefulWidget {
  final String title;
  final String duration;
  final Color? color;
  final AudioRecordsModel audio;
  final VoidCallback onRename;
  final VoidCallback onDelete;
  final VoidCallback onChoose;
  final VoidCallback onShare;
  final ValueChanged<TextEditingController> onSave;
  final VoidCallback onCancel;

  const AudioItemTile({
    super.key,
    required this.title,
    required this.duration,
    this.color,
    required this.audio,
    required this.onRename,
    required this.onDelete,
    required this.onChoose,
    required this.onShare,
    required this.onSave,
    required this.onCancel,
  });

  @override
  State<AudioItemTile> createState() => _AudioItemTileState();
}

class _AudioItemTileState extends State<AudioItemTile> {
  late TextEditingController _controller;
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController(text: widget.title);
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MiniPlayerBloc, MiniPlayerBlocState>(
      builder: (context, state) {
        final editingAudioId = context
            .select((AudioRecordsScreenBloc bloc) => bloc.state.editingAudioId);
        final isEditing = editingAudioId == widget.audio.id;

        bool isPlaying = state.audioRecordsList.isNotEmpty &&
            state.currentPlayingIndex < state.audioRecordsList.length &&
            state.audioRecordsList[state.currentPlayingIndex] == widget.audio &&
            state.status == MiniPlayerStatus.playing;

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(41),
            border: Border.all(
              width: 1.0,
              color: AppColors.fontColor.withOpacity(0.2),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        final bloc = context.read<MiniPlayerBloc>();

                        if (isPlaying) {
                          if (state.status == MiniPlayerStatus.playing) {
                            bloc.add(const MiniPlayerBlocEvent.pause());
                          } else if (state.status == MiniPlayerStatus.paused) {
                            bloc.add(const MiniPlayerBlocEvent.resume());
                          }
                        } else {
                          if (state.status == MiniPlayerStatus.paused &&
                              state.audioRecordsList.contains(widget.audio)) {
                            bloc.add(const MiniPlayerBlocEvent.resume());
                          } else {
                            bloc.add(
                              MiniPlayerBlocEvent.open(
                                [widget.audio],
                              ),
                            );
                          }
                        }
                      },
                      child: SvgPicture.asset(
                        isPlaying
                            ? 'assets/icons/Pause.svg'
                            : 'assets/icons/Play.svg',
                        colorFilter: ColorFilter.mode(
                          widget.color ?? AppColors.blueColor,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                    const SizedBox(width: 23.0),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        !isEditing
                            ? Text(
                                widget.title,
                                style: AppTextStyles.subtitle,
                              )
                            : SizedBox(
                                width: 150,
                                child: TextField(
                                  controller: _controller,
                                  style: !isEditing
                                      ? AppTextStyles.subtitle
                                      : AppTextStyles.subtitle.copyWith(
                                          decoration: TextDecoration.underline,
                                        ),
                                  decoration: const InputDecoration(
                                    isDense: true,
                                    contentPadding: EdgeInsets.symmetric(
                                      horizontal: 0.0,
                                      vertical: 0.0,
                                    ),
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide.none,
                                    ),
                                  ),
                                ),
                              ),
                        const SizedBox(height: 4.0),
                        Text(
                          formatDuration(widget.audio.duration),
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
                  child: Row(
                    children: [
                      isEditing
                          ? Padding(
                              padding: const EdgeInsets.only(right: 10.0),
                              child: Row(
                                children: [
                                  GestureDetector(
                                    onTap: () => widget.onSave(_controller),
                                    child: SvgPicture.asset(
                                      'assets/icons/Check_Box_Done.svg',
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () => widget.onCancel(),
                                    child: SvgPicture.asset(
                                      'assets/icons/cancel.svg',
                                      width: 13,
                                      height: 13,
                                      colorFilter: const ColorFilter.mode(
                                        AppColors.fontColor,
                                        BlendMode.srcIn,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          : BlocBuilder<AudioRecordsScreenBloc,
                              AudioRecordsScreenState>(
                              builder: (context, state) {
                                return PopupMenuButton(
                                  shape: const RoundedRectangleBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                  ),
                                  color: Colors.white,
                                  offset: const Offset(-10, 45),
                                  icon: SvgPicture.asset(
                                    'assets/icons/SmalDots.svg',
                                  ),
                                  onSelected: (value) {
                                    switch (value) {
                                      case PopupValues.edit:
                                        WidgetsBinding.instance
                                            .addPersistentFrameCallback((_) {
                                          _focusNode.requestFocus();
                                        });
                                        widget.onRename();
                                        break;
                                      case PopupValues.delete:
                                        widget.onDelete();
                                        break;
                                      case PopupValues.addToCollection:
                                        widget.onChoose();
                                        break;
                                      case PopupValues.share:
                                        widget.onShare();
                                        break;
                                      case PopupValues.save:
                                        widget.onSave(_controller);
                                        break;
                                      case PopupValues.cancel:
                                        _controller.text = widget.title;
                                        widget.onCancel();
                                        break;
                                    }
                                  },
                                  itemBuilder: (context) {
                                    if (state.popupStatus ==
                                        AudioPopupStatus.initial) {
                                      return [
                                        const PopupMenuItem(
                                          value: PopupValues.edit,
                                          child: Text(
                                            'Переименовать',
                                            style: AppTextStyles.subtitleTall,
                                          ),
                                        ),
                                        const PopupMenuItem(
                                          value: PopupValues.addToCollection,
                                          child: Text(
                                            'Добавить в подборку',
                                            style: AppTextStyles.subtitleTall,
                                          ),
                                        ),
                                        const PopupMenuItem(
                                          value: PopupValues.delete,
                                          child: Text(
                                            'Удалить',
                                            style: AppTextStyles.subtitleTall,
                                          ),
                                        ),
                                        const PopupMenuItem(
                                          value: PopupValues.share,
                                          child: Text(
                                            'Поделиться',
                                            style: AppTextStyles.subtitleTall,
                                          ),
                                        ),
                                      ];
                                    }
                                    if (state.popupStatus ==
                                        AudioPopupStatus.editing) {
                                      return [
                                        const PopupMenuItem(
                                          value: PopupValues.save,
                                          child: Text(
                                            'Сохранить',
                                            style: AppTextStyles.subtitleTall,
                                          ),
                                        ),
                                        const PopupMenuItem(
                                          value: PopupValues.cancel,
                                          child: Text(
                                            'Отменить',
                                            style: AppTextStyles.subtitleTall,
                                          ),
                                        ),
                                      ];
                                    }
                                    return [
                                      const PopupMenuItem(
                                        value: 'edit',
                                        child: Text(
                                          'Сохранить',
                                          style: AppTextStyles.subtitleTall,
                                        ),
                                      ),
                                      const PopupMenuItem(
                                        value: 'choose',
                                        child: Text(
                                          'Отменить',
                                          style: AppTextStyles.subtitleTall,
                                        ),
                                      ),
                                    ];
                                  },
                                );
                              },
                            ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
