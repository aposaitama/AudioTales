import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/models/simple_collection_model.dart';
import 'package:memory_box_avada/navigation/cubit/navigation_cubit.dart';
import 'package:memory_box_avada/screens/collection_screen/widgets/collection_item_tile.dart';
import 'package:memory_box_avada/style/colors/colors.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class CollectionPreview extends StatelessWidget {
  final List<SimpleCollectionModel> collectionList;
  const CollectionPreview({super.key, required this.collectionList});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 240,
          width: MediaQuery.of(context).size.width / 2 - 22.5,
          decoration: BoxDecoration(
            color: AppColors.mainColor.withOpacity(0.8),
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                offset: const Offset(0, 5),
                blurRadius: 10,
                spreadRadius: 1,
              ),
            ],
          ),
          child: collectionList.isNotEmpty
              ? CollectionItemTile(
                  collection: collectionList[0],
                )
              : Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        'Здесь будет твой набор сказок',
                        style: AppTextStyles.whiteBodyTile,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    BlocBuilder<NavigationCubit, NavigationState>(
                      builder: (context, state) {
                        return GestureDetector(
                          onTap: () {
                            context.read<NavigationCubit>().navigateTo(1);
                            context.go('/collection/add');
                          },
                          child: const Text(
                            'Добавить',
                            style: AppTextStyles.whiteTitleUnderline,
                          ),
                        );
                      },
                    ),
                  ],
                ),
        ),
        Column(
          children: [
            Container(
              height: 112,
              width: MediaQuery.of(context).size.width / 2 - 22.5,
              decoration: BoxDecoration(
                color: AppColors.orangeColor.withOpacity(0.9),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 10),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: collectionList.length > 1
                  ? CollectionItemTile(
                      collection: collectionList[1],
                    )
                  : const Center(
                      child: Text(
                        'Тут',
                        style: AppTextStyles.whiteBodyTile,
                      ),
                    ),
            ),
            const SizedBox(
              height: 15.0,
            ),
            Container(
              height: 112,
              width: MediaQuery.of(context).size.width / 2 - 22.5,
              decoration: BoxDecoration(
                color: AppColors.blueColor.withOpacity(0.85),
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    offset: const Offset(0, 5),
                    blurRadius: 10,
                    spreadRadius: 1,
                  ),
                ],
              ),
              child: collectionList.length > 2
                  ? CollectionItemTile(
                      collection: collectionList[2],
                    )
                  : const Center(
                      child: Text(
                        'И тут',
                        style: AppTextStyles.whiteBodyTile,
                      ),
                    ),
            ),
          ],
        ),
      ],
    );
  }
}
