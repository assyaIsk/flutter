import 'package:flutter/material.dart';
import 'package:vegetables/data/vegetables.dart';
import 'package:vegetables/widgets/vegetables/vegetable_list.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({
    super.key,
    required this.vegetables,
  });
  final List<Vegetables> vegetables;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Favorites'),
        ),
        body: Center(
          //list of vegetables
          child: vegetables.isEmpty
              ? const Text('no favorites')
              : VegetableList(vegetables: vegetables),
        ));
  }
}
