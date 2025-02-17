import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_bloc.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_event.dart';
import 'package:memory_box_avada/screens/audio_records_screen/bloc/audio_records_screen_state.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_state.dart';

import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/choose_several_screen/widgets/choose_collection_item_tile.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class ChooseSeveralScreen extends StatelessWidget {
  const ChooseSeveralScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double tileHeight = 240.0;

    return BlocBuilder<CollectionBloc, CollectionBlocState>(
      builder: (context, state) {
        List<CollectionModel> choosedCollection = state.choosedCollectionList;
        if (state.status == CollectionBlocStatus.loading) {
          return const Center(child: CircularProgressIndicator());
        }
        if (state.collectionList.isEmpty) {
          return const Center(child: Text('Нет подборок'));
        }
        return Scaffold(
          appBar: AppBar(
            title: const Text(
              'Подборки',
              style: AppTextStyles.appBarTextOpacity,
            ),
            toolbarHeight: 65,
            backgroundColor: AppColors.greenColor,
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
                child: BlocBuilder<AudioRecordsScreenBloc,
                    AudioRecordsScreenState>(
                  builder: (context, state) {
                    return GestureDetector(
                      onTap: () {
                        context.read<AudioRecordsScreenBloc>().add(
                              ChooseCollectionAudioRecordsScreenStateEvent(
                                choosedCollection,
                              ),
                            );
                        context.go('/collection');
                      },
                      child: const Text(
                        'Добавить',
                        style: AppTextStyles.whiteTitle,
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          body: Stack(
            children: [
              const CustomProfileTopClipPath(
                backgroundColor: AppColors.greenColor,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 40.0),
                child: LayoutBuilder(
                  builder: (context, constraints) {
                    final double tileWidth = constraints.maxWidth / 2 - 24.0;
                    return GridView.builder(
                      padding: const EdgeInsets.all(16.0),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 16.0,
                        crossAxisSpacing: 16.0,
                        childAspectRatio: tileWidth / tileHeight,
                      ),
                      itemCount: state.collectionList.length,
                      itemBuilder: (context, index) {
                        return Stack(
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.read<CollectionBloc>().add(
                                      ToggleCollectionSelectionBlocEvent(
                                        state.collectionList[index],
                                      ),
                                    );
                              },
                              child: ChooseCollectionItemTile(
                                collection: state.collectionList[index],
                              ),
                            ),
                          ],
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
