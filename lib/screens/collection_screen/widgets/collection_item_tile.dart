import 'package:flutter/material.dart';

class CollectionItemTile extends StatelessWidget {
  const CollectionItemTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
