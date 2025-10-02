import 'package:flutter/material.dart';
import 'package:snack/data/item.dart';
import 'package:snack/common/recommend_card.dart';

class RecommendCardList extends StatelessWidget {
  const RecommendCardList({super.key});

  @override
  Widget build(BuildContext context) {
    final items = RecommendItem.itemsData;

    return SizedBox(
      height: 262,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(left: 20),
            child: RecommendCardWidget(item: items[index]),
          );
        },
      ),
    );
  }
}
