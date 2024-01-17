import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegetables/cubits/cubit/favorites_cubit.dart';
import 'package:vegetables/data/vegetables.dart';
import 'package:vegetables/models/vegetable_model.dart';
import 'package:vegetables/widgets/vegetables/header.dart';
import 'package:vegetables/widgets/vegetables/vegetable_list.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    checkfavorites() {
      return vegetables.where((e) => e.isFavorite).toList();
    }

    final List<Vegetables> favoriteList = checkfavorites();

    return BlocConsumer<FavoritesCubit, FavoritesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Header(screenName: 'Favorites', isFirstTab: false),

          //list of vegetables
          state.when(
            initial: () => favoriteList.isEmpty
                ? const Center(child: Text('no favorites'))
                : VegetableList(vegetables: favoriteList),
            favorite: (vegetable, isFavorite) => checkfavorites().isEmpty
                ? const Center(child: Text('no favorites'))
                : VegetableList(vegetables: checkfavorites()),
          ),
        ]);
      },
    );
  }
}
