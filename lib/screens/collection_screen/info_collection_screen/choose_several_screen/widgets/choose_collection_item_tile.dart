import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/models/simple_collection_model.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_state.dart';
import 'package:memory_box_avada/utils/duration_helper.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class ChooseCollectionItemTile extends StatelessWidget {
  final SimpleCollectionModel collection;
  const ChooseCollectionItemTile({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: collection.imageUrl.isNotEmpty
              ? CachedNetworkImage(
                  imageUrl: collection.imageUrl,
                  width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                  placeholder: (context, url) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) =>
                      const Icon(Icons.broken_image, size: 50),
                )
              : const Icon(Icons.image_not_supported, size: 50),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: ((MediaQuery.of(context).size.width - 90) / 2) / 2,
                child: Text(
                  collection.title,
                  style: AppTextStyles.appBarSubTextHeavy,
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '${collection.audioCount} аудио',
                    style: AppTextStyles.subtitleWhite,
                  ),
                  SizedBox(
                    width: ((MediaQuery.of(context).size.width - 72) / 2) / 2,
                    child: Text(
                      formatDuration(collection.duration),
                      style: AppTextStyles.subtitleWhite,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        BlocBuilder<CollectionBloc, CollectionBlocState>(
          builder: (context, state) {
            final isSelected = state.choosedCollectionList.contains(collection);

            return Center(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color:
                      !isSelected ? const Color.fromRGBO(0, 0, 0, 0.5) : null,
                ),
                child: Center(
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      border: Border.all(width: 2.0, color: Colors.white),
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: isSelected
                        ? Center(
                            child: SvgPicture.asset(
                              'assets/icons/Check_Box_Done.svg',
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          )
                        : null,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
