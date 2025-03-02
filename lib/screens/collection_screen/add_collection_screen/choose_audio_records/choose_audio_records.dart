import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/models/audio_records_model.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';
import 'package:memory_box_avada/screens/collection_screen/add_collection_screen/choose_audio_records/bloc/choose_audio_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/add_collection_screen/choose_audio_records/bloc/choose_audio_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/add_collection_screen/choose_audio_records/bloc/choose_audio_bloc_state.dart';
import 'package:memory_box_avada/screens/collection_screen/add_collection_screen/choose_audio_records/widgets/add_audio_item_tile.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_event.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/screens/search_screen/widget/search_field.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/text_style.dart';

class ChooseAudioRecords extends StatefulWidget {
  ChooseAudioRecords({
    super.key,
  });

  @override
  State<ChooseAudioRecords> createState() => _ChooseAudioRecordsState();
  final List<AudioRecordsModel> selectedRecords = [];
}

class _ChooseAudioRecordsState extends State<ChooseAudioRecords> {
  final TextEditingController _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void toggleSelection(AudioRecordsModel record, bool isSelected) {
      setState(() {
        if (isSelected) {
          widget.selectedRecords.add(record);
        } else {
          widget.selectedRecords.removeWhere((r) => r.title == record.title);
        }
      });
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Выбрать',
          style: TextStyle(
            color: Colors.white,
            fontSize: 36.0,
            fontWeight: FontWeight.w700,
            height: 1.5,
            letterSpacing: 3,
            fontFamily: 'TTNorms',
          ),
        ),
        toolbarHeight: 65,
        backgroundColor: AppColors.greenColor,
        leadingWidth: 75.0,
        leading: Builder(
          builder: (context) => Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Align(
              alignment: Alignment.topLeft,
              child: Container(
                height: 60.0,
                width: 60.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: IconButton(
                  iconSize: 36.0,
                  icon: SvgPicture.asset(
                    'assets/icons/Arrow_Left_Circle.svg',
                    height: 36.0,
                    width: 36.0,
                  ),
                  onPressed: () => context.pop(),
                ),
              ),
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              context.pop();
              context
                  .read<CollectionBloc>()
                  .add(ChooseAudiosBlocEvent(widget.selectedRecords));
            },
            child: const Padding(
              padding: EdgeInsets.only(right: 10.0, top: 15.0),
              child: Text(
                'Добавить',
                style: AppTextStyles.whiteTitle,
              ),
            ),
          ),
        ],
      ),
      body: BlocBuilder<ChooseAudioBloc, ChooseAudioBlocState>(
        builder: (context, chooseState) {
          return Column(
            children: [
              Stack(
                children: [
                  const CustomProfileTopClipPath(
                    minusHeigth: 50,
                    backgroundColor: AppColors.greenColor,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 40.0,
                      left: 16.0,
                      right: 16.0,
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 5),
                            blurRadius: 10,
                            spreadRadius: 1,
                          ),
                        ],
                      ),
                      child: SearchField(
                        controller: _searchController,
                        onChanged: (query) {
                          context.read<ChooseAudioBloc>().add(
                                SearchChooseAudioBlocEvent(query),
                              );
                        },
                        onTapSearch: () {
                          FocusScope.of(context).unfocus();
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 11.0,
              ),
              BlocBuilder<AudioRecordsScreenBloc, AudioRecordsScreenState>(
                builder: (context, state) {
                  return Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16.0,
                      ),
                      child: ListView.builder(
                        itemCount: state.audioList.length,
                        itemBuilder: (context, int index) {
                          return Column(
                            children: [
                              AddAudioItemTile(
                                audio: state.audioList[index],
                                isSelected: widget.selectedRecords.contains(
                                  state.audioList[index],
                                ),
                                onSelected: (isSelected) => toggleSelection(
                                  state.audioList[index],
                                  isSelected,
                                ),
                              ),
                              const SizedBox(
                                height: 10.0,
                              ),
                            ],
                          );
                        },
                      ),
                    ),
                  );
                },
              ),
            ],
          );
        },
      ),
    );
  }
}
