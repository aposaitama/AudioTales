import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';
import 'package:memory_box_avada/screens/audio_records_screen/widgets/audio_item_tile.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/widgets/show_delete_dialog.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc_event.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc_state.dart';
import 'package:memory_box_avada/screens/search_screen/widget/search_field.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class SearchScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SearchScreen({super.key, required this.scaffoldKey});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late ScrollController _scrollController;

  final TextEditingController _searchController = TextEditingController();

  void _scrollListener() {
    final audioCount = context.read<SearchBloc>().state.filteredAudiosCount;
    final totalItems = context.read<SearchBloc>().state.audiosList.length;
    final currentIndex = _scrollController.position.pixels /
        (_scrollController.position.maxScrollExtent / totalItems);

    if (currentIndex >= totalItems - 1 && totalItems < audioCount) {
      context
          .read<SearchBloc>()
          .add(LoadNextSearchEvent(_searchController.text));
    }
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _scrollController.addListener(_scrollListener);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Поиск\n',
            style: TextStyle(
              color: Colors.white,
              fontSize: 36.0,
              fontWeight: FontWeight.w700,
              height: 1.5,
              letterSpacing: 3,
              fontFamily: 'TTNorms',
            ),
            children: <TextSpan>[
              TextSpan(
                text: 'Найди потеряшку',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                  fontWeight: FontWeight.w500,
                  height: 1.0,
                  letterSpacing: 1,
                  fontFamily: 'TTNorms',
                ),
              ),
            ],
          ),
        ),
        toolbarHeight: 70,
        backgroundColor: AppColors.blueColor,
        leading: Builder(
          builder: (context) => Align(
            alignment: Alignment.topLeft,
            child: IconButton(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SvgPicture.asset(
                  'assets/icons/Add.svg',
                  height: 24.0,
                  width: 24.0,
                ),
              ),
              onPressed: () => context.go('/collection/add'),
            ),
          ),
        ),
      ),
      body: BlocBuilder<SearchBloc, SearchBlocState>(
        builder: (context, state) {
          return Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      const CustomProfileTopClipPath(
                        backgroundColor: AppColors.blueColor,
                        minusHeigth: 70,
                      ),
                      SearchField(
                        controller: _searchController,
                        onChanged: (query) {
                          context.read<SearchBloc>().add(
                                SearchAudioRecordsEvent(query),
                              );
                        },
                        onTapSearch: () {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ],
                  ),
                  state.audiosList.isNotEmpty
                      ? Expanded(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 16.0,
                              vertical: 10.0,
                            ),
                            child: ListView.builder(
                              controller: _scrollController,
                              itemCount: state.audiosList.length,
                              itemBuilder: (context, int index) {
                                final audio = state.audiosList[index];
                                return Column(
                                  children: [
                                    AudioItemTile(
                                      audio: audio,
                                      title: audio.title,
                                      duration: '30 минут',
                                      onRename: () {
                                        context
                                            .read<AudioRecordsScreenBloc>()
                                            .add(
                                              const ChangePopupAudioRecordsScreenStateEvent(
                                                AudioPopupStatus.editing,
                                              ),
                                            );
                                        context
                                            .read<AudioRecordsScreenBloc>()
                                            .add(
                                              EditAudioRecordsScreenStateEvent(
                                                audio.id,
                                              ),
                                            );
                                      },
                                      onSave: (controller) {
                                        context
                                            .read<AudioRecordsScreenBloc>()
                                            .add(
                                              SaveAudioRecordsScreenStateEvent(
                                                controller.text,
                                              ),
                                            );
                                      },
                                      onCancel: () {
                                        context
                                            .read<AudioRecordsScreenBloc>()
                                            .add(
                                              const ChangePopupAudioRecordsScreenStateEvent(
                                                AudioPopupStatus.initial,
                                              ),
                                            );
                                        context
                                            .read<AudioRecordsScreenBloc>()
                                            .add(
                                              const CancelEditingAudioRecordsScreenStateEvent(),
                                            );
                                      },
                                      onDelete: () {
                                        ShowDeleteDialog.show(
                                          'Ваш файл перенесется в папку “Недавно удаленные”. Через 15 дней он исчезнет.',
                                          context,
                                          onYes: () {
                                            context
                                                .read<AudioRecordsScreenBloc>()
                                                .add(
                                                  DeleteAudioRecordsScreenStateEvent(
                                                    audio.title,
                                                  ),
                                                );
                                          },
                                        );
                                      },
                                      onChoose: () {
                                        context
                                            .read<AudioRecordsScreenBloc>()
                                            .add(
                                              ChooseAudioRecordsScreenStateEvent(
                                                [audio],
                                              ),
                                            );
                                        context.go(
                                          '/collection/info/choose',
                                        );
                                      },
                                      onShare: () {
                                        context
                                            .read<AudioRecordsScreenBloc>()
                                            .add(
                                              ShareAudioRecordsScreenStateEvent(
                                                state.audiosList[index],
                                              ),
                                            );
                                      },
                                    ),
                                    const SizedBox(
                                      height: 10.0,
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
                        )
                      : _searchController.text.isEmpty
                          ? const Expanded(
                              child: Center(
                                child: Padding(
                                  padding: EdgeInsets.all(20),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Введи назву аудіозапису',
                                    style: AppTextStyles.body,
                                  ),
                                ),
                              ),
                            )
                          : SizedBox.shrink(),
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
