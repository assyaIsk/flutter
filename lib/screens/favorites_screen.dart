import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegetables/cubits/cubit/my_states_cubit.dart';
import 'package:vegetables/models/vegetables.dart';
import 'package:vegetables/widgets/header/header.dart';
import 'package:vegetables/widgets/vegetables/vegetable_list.dart';

class FavoritesScreen extends StatelessWidget {
  const FavoritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<VegetablesModel> favoriteList;

    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        favoriteList = context.read<FavoritesCubit>().checkfavorites();
        return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const Header(screenName: 'Favorites', isFirstTab: false),

          //list of vegetable
          VegetableList(vegetables: favoriteList)
        ]);
      },
    );
  }
}
