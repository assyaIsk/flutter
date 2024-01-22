import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegetables/cubits/cubit/my_states_cubit.dart';
import 'package:vegetables/models/vegetables.dart';
import 'package:vegetables/styles/style.dart';
import 'package:vegetables/widgets/header/back_arrow.dart';

class VegetableDetailScreen extends StatelessWidget {
  const VegetableDetailScreen({super.key, required this.vegetable});
  final VegetablesModel vegetable;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<FavoritesCubit, FavoritesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          body: DecoratedBox(
            decoration: const BoxDecoration(
              color: AppStyles.backgroundColor,
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  top: 0,
                  child: Align(
                    child: Container(
                      width: 414,
                      height: 358,
                      decoration: const BoxDecoration(
                          color: AppStyles.violetLightColor),
                      child: Image.asset(
                        'assets/Media.png',
                      ),
                    ),
                  ),
                ),
                Positioned(
                  left: 187,
                  top: 258,
                  child: Align(
                    child: SizedBox(
                      width: 40,
                      height: 8,
                      child: SvgPicture.asset(
                        'assets/svg/Dots.svg',
                      ),
                    ),
                  ),
                ),
                const Positioned(left: 0, top: 0, child: BackArrow()),
                Positioned(
                  left: 0,
                  top: 281,
                  child: Container(
                    padding: const EdgeInsets.fromLTRB(20, 37, 20, 65),
                    width: 414,
                    height: 615,
                    decoration: const BoxDecoration(
                      color: AppStyles.backgroundColor,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          vegetable.name,
                          style: AppStyles.detailTitleTextStyle30,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  margin:
                                      const EdgeInsets.fromLTRB(0, 0, 16, 0),
                                  child: Text(
                                    vegetable.price.toString(),
                                    style: AppStyles.detailTextStyle22,
                                  ),
                                ),
                                Text(
                                  '€ / ${vegetable.unit.name}',
                                  textAlign: TextAlign.center,
                                  style: AppStyles.detailSubTextStyle24,
                                ),
                              ],
                            ),
                            const Text('~ 150 gr / piece',
                                style: AppStyles.detailGreenTextStyle17),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Spain',
                                style: AppStyles.detailTextStyle22),
                            Text(vegetable.text,
                                style: AppStyles.detailVioletTextStyle17),
                          ],
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                              width: 78,
                              height: 56,
                              child: OutlinedButton(
                                  onPressed: () => {
                                        context
                                            .read<FavoritesCubit>()
                                            .clickFavorite(vegetable,
                                                vegetable.isFavorite),
                                      },
                                  style: OutlinedButton.styleFrom(
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      backgroundColor: AppStyles.whiteBtnColor),
                                  child: state.when(
                                      initial: () => SvgPicture.asset(
                                            'assets/svg/heart.svg',
                                          ),
                                      favorite: (veg, isFavorite) =>
                                          vegetable.isFavorite == false
                                              ? SvgPicture.asset(
                                                  'assets/svg/heart.svg',
                                                )
                                              : SvgPicture.asset(
                                                  'assets/svg/favorite.svg',
                                                  color: Colors.red))),
                            ),
                            SizedBox(
                              width: 275,
                              height: 56,
                              child: TextButton.icon(
                                label: const Text(
                                  'ADD TO CART',
                                  style:
                                      TextStyle(color: AppStyles.whiteBtnColor),
                                ),
                                icon: SvgPicture.asset(
                                  'assets/svg/shopping-cart.svg',
                                ),
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8.0),
                                    ),
                                    backgroundColor: AppStyles.greenBtnColor),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
