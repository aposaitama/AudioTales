import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc.dart';
import 'package:memory_box_avada/screens/collection_screen/bloc/collection_bloc_state.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class ChooseCollectionItemTile extends StatelessWidget {
  final CollectionModel collection;
  const ChooseCollectionItemTile({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(14),
          child: CachedNetworkImage(
            imageUrl: collection.imageUrl,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
            errorWidget: (context, error, stackTrace) =>
                const Icon(Icons.broken_image, size: 50),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: ((MediaQuery.of(context).size.width - 70) / 2) / 2,
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
                    '${collection.audiosList.length} аудио',
                    style: AppTextStyles.subtitleWhite,
                  ),
                  const Text(
                    overflow: TextOverflow.clip,
                    '2:30 часа',
                    style: AppTextStyles.subtitleWhite,
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
