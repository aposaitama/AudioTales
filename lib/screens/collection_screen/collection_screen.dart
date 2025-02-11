import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_state.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/info_collection_screen/bloc/info_collection_bloc_event.dart';
import 'package:memory_box_avada/screens/collection_screen/widgets/collection_item_tile.dart';
import 'package:memory_box_avada/screens/profile_screen/widgets/custom_profile_top_clip_path.dart';
import 'package:memory_box_avada/style/colors/colors.dart';

class CollectionScreen extends StatelessWidget {
  const CollectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const double tileHeight = 240.0;

    return Scaffold(
      appBar: AppBar(
        title: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
            text: 'Подборки\n',
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
                text: 'Все в одном месте',
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
            child: SvgPicture.asset(
              'assets/icons/Dots.svg',
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          const CustomProfileTopClipPath(
            backgroundColor: AppColors.greenColor,
          ),
          BlocBuilder<CollectionBloc, CollectionBlocState>(
            builder: (context, state) {
              if (state.status == CollectionBlocStatus.loading) {
                return const Center(child: CircularProgressIndicator());
              }
              if (state.collectionList.isEmpty) {
                return const Center(child: Text('Нет подборок'));
              }
              return Padding(
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
                        return GestureDetector(
                          onTap: () {
                            context.go('/collection/info');
                            context.read<InfoCollectionBloc>().add(
                                  LoadingInfoCollectionBlocEvent(
                                    state.collectionList[index],
                                  ),
                                );
                          },
                          child: CollectionItemTile(
                            collection: state.collectionList[index],
                          ),
                        );
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
