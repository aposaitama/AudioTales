import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/audio_records_screen/widgets/audio_item_tile.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc_event.dart';
import 'package:memory_box_avada/screens/search_screen/search_bloc/search_bloc_state.dart';
import 'package:memory_box_avada/screens/search_screen/widget/hint_container.dart';
import 'package:memory_box_avada/screens/search_screen/widget/search_field.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class SearchScreen extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  const SearchScreen({super.key, required this.scaffoldKey});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  bool _showContainer = false;
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(),
      child: Scaffold(
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
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: SvgPicture.asset(
                'assets/icons/Dots.svg',
              ),
            )
          ],
        ),
        body: BlocBuilder<SearchBloc, SearchBlocState>(
          builder: (context, state) {
            return Stack(children: [
              Column(
                children: [
                  Stack(
                    children: [
                      const CustomProfileTopClipPath(
                        backgroundColor: AppColors.blueColor,
                        minusHeigth: 70,
                      ),
                      Focus(
                        onFocusChange: (hasFocus) {
                          if (hasFocus) {
                            setState(() {
                              _showContainer = hasFocus;
                            });
                          } else if (!hasFocus) {
                            setState(() {
                              _showContainer = hasFocus;
                            });
                          }
                        },
                        child: SearchField(
                          controller: _searchController,
                          onChanged: (query) {
                            context
                                .read<SearchBloc>()
                                .add(SearchAudioRecordsEvent(query));
                          },
                          onTapSearch: () {
                            FocusScope.of(context).unfocus();
                          },
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: ListView.builder(
                        itemCount: state.filteredAudiosList.length,
                        itemBuilder: (context, int index) {
                          final audio = state.filteredAudiosList[index];
                          return Column(
                            children: [
                              AudioItemTile(
                                audio: audio,
                                title: audio.title,
                                duration: '30 минут',
                                onRename: () {
                                  print("Переименовать натиснуто");
                                },
                                onDelete: () {
                                  context.read<AudioRecordsScreenBloc>().add(
                                        DeleteAudioRecordsScreenStateEvent(
                                            audio.title),
                                      );
                                },
                                onChoose: () {
                                  context.go('/collection/info/choose');
                                },
                                onShare: () {
                                  print("Поделиться натиснуто");
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
                ],
              ),
              if (_showContainer)
                HintContainer(
                  onTap: (int index) {
                    debugPrint('Tapped index: $index');
                    _searchController.text =
                        state.filteredAudiosList[index].title;
                    context.read<SearchBloc>().add(
                          SearchAudioRecordsEvent(_searchController.text),
                        );
                    FocusScope.of(context).unfocus();
                  },
                )
            ]);
          },
        ),
      ),
    );
  }
}
