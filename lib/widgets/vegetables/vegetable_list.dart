import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegetables/cubits/cubit/my_states_cubit.dart';
import 'package:vegetables/data/vegetables.dart';
import 'package:vegetables/screens/vegetable_detail.dart';
import 'package:vegetables/styles/style.dart';

class VegetableList extends StatelessWidget {
  const VegetableList({
    super.key,
    required List<Vegetables>? vegetables,
  }) : vegetables = vegetables ?? const [];
  final List<Vegetables> vegetables;

  @override
  Widget build(BuildContext context) {
    final halfWidth = MediaQuery.of(context).size.width / 2 - 20;
    final quarterWidth = halfWidth / 2 - 20;
    return BlocConsumer<SearchCubit, SearchState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Expanded(
            child: state.when(
          initial: () => VegetablesListWidget(
              vegetables: vegetables,
              halfWidth: halfWidth,
              quarterWidth: quarterWidth),
          search: (value) => VegetablesListWidget(
              vegetables: vegetables
                  .where(
                      (e) => e.name.toUpperCase().contains(value.toUpperCase()))
                  .toList(),
              halfWidth: halfWidth,
              quarterWidth: quarterWidth),
        ));
      },
    );
  }
}

class VegetablesListWidget extends StatelessWidget {
  const VegetablesListWidget({
    super.key,
    required this.vegetables,
    required this.halfWidth,
    required this.quarterWidth,
  });

  final List<Vegetables> vegetables;
  final double halfWidth;
  final double quarterWidth;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.only(top: 0),
      itemCount: vegetables.length,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.fromLTRB(20, 16, 0, 16),
          child: Row(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              width: halfWidth,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppStyles.violetLightColor,
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (ctx) =>
                          VegetableDetailScreen(vegetable: vegetables[index]),
                    ),
                  );
                },
                child: Image.asset(
                  vegetables[index].imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            SizedBox(
              width: halfWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(vegetables[index].name,
                      style: AppStyles.violetDarkTextStyle18),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        vegetables[index].price.toStringAsFixed(2),
                        style: AppStyles.detailTextStyle22,
                      ),
                      Text(
                        '€ /${vegetables[index].unit.name}',
                        textAlign: TextAlign.center,
                        style: AppStyles.violetTextStyle16,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  BlocConsumer<FavoritesCubit, FavoritesState>(
                    listener: (context, state) {},
                    builder: (context, state) {
                      return Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            width: quarterWidth,
                            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            child: OutlinedButton(
                                onPressed: () => {
                                      context
                                          .read<FavoritesCubit>()
                                          .clickFavorite(vegetables[index],
                                              vegetables[index].isFavorite),
                                    },
                                style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  backgroundColor: AppStyles.whiteBtnColor,
                                ),
                                child: state.when(
                                    initial: () => SvgPicture.asset(
                                          'assets/svg/heart.svg',
                                        ),
                                    favorite: (vegetable, isFavorite) =>
                                        vegetables[index].isFavorite == false
                                            ? SvgPicture.asset(
                                                'assets/svg/heart.svg',
                                              )
                                            : SvgPicture.asset(
                                                'assets/svg/favorite.svg',
                                                color: Colors.red))),
                          ),
                          SizedBox(
                            width: quarterWidth,
                            child: IconButton(
                              color: AppStyles.greenBtnColor,
                              icon: SvgPicture.asset(
                                'assets/svg/shopping-cart.svg',
                              ),
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                backgroundColor: AppStyles.greenBtnColor,
                              ),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ]),
        );
      },
    );
  }
}
