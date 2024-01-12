import 'package:flutter/material.dart';
import 'package:vegetables/data/vegetables.dart';
import 'package:vegetables/widgets/vegetables/header.dart';
import 'package:vegetables/widgets/vegetables/vegetable_list.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({
    super.key,
    required this.vegetables,
  });
  final List<Vegetables> vegetables;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Header(screenName: 'Favorites', isFirstTab: false),
      Expanded(
        //list of vegetables
        child: vegetables.isEmpty
            ? const Text('no favorites')
            : VegetableList(vegetables: vegetables),
      )
    ]);
  }
}
