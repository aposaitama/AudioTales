import 'package:flutter/material.dart';
import 'package:memory_box_avada/models/collection_model.dart';
import 'package:memory_box_avada/style/textStyle/textStyle.dart';

class CollectionItemTile extends StatelessWidget {
  final CollectionModel collection;
  const CollectionItemTile({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    return Stack(alignment: AlignmentDirectional.bottomCenter, children: [
      ClipRRect(
        borderRadius: BorderRadius.circular(14),
        child: Image.network(
          collection.imageUrl,
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) =>
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
              width: ((MediaQuery.of(context).size.width - 35) / 2) / 2,
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
                Text(
                  '2:30 часа',
                  style: AppTextStyles.subtitleWhite,
                )
              ],
            )
          ],
        ),
      )
    ]);
  }
}
