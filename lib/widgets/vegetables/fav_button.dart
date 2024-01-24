import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegetables/cubits/cubit/my_states_cubit.dart';
import 'package:vegetables/models/vegetables.dart';
import 'package:vegetables/styles/style.dart';

class FavButton extends StatelessWidget {
  const FavButton(
      {super.key, required this.vegetable, required this.quarterWidth});
  final VegetablesModel vegetable;
  final double quarterWidth;

  @override
  Widget build(BuildContext context) {
    String favIcon = 'assets/svg/heart.svg';
    Color favIconColor = Colors.black;
    setDefaultsFavIcon() {
      favIcon = 'assets/svg/heart.svg';
      favIconColor = Colors.black;
    }

    return BlocBuilder<FavoritesCubit, FavoritesState>(
      builder: (context, state) {
        state.when(
            initial: () {
              setDefaultsFavIcon();
            },
            favorite: (veg, isFavorite) => {
                  vegetable.isFavorite == true
                      ? {
                          favIcon = 'assets/svg/favorite.svg',
                          favIconColor = Colors.red
                        }
                      : setDefaultsFavIcon()
                });
        return Container(
          margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          width: quarterWidth,
          child: OutlinedButton(
              onPressed: () => {
                    context.read<FavoritesCubit>().clickFavorite(
                        vegetable: vegetable, isFavorite: vegetable.isFavorite),
                  },
              style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  backgroundColor: AppStyles.whiteBtnColor),
              child: SvgPicture.asset(favIcon, color: favIconColor)),
        );
      },
    );
  }
}
