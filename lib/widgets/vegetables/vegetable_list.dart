import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegetables/cubits/cubit/favorites_cubit.dart';
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
    return BlocConsumer<FavoritesCubit, FavoritesState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Expanded(
          child: ListView.builder(
            padding: const EdgeInsets.only(top: 0),
            itemCount: vegetables.length,
            itemBuilder: (context, index) {
              return Container(
                alignment: Alignment.topCenter,
                margin: const EdgeInsets.fromLTRB(0, 0, 0, 8),
                padding: const EdgeInsets.fromLTRB(20, 16, 0, 16),
                height: 165,
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                        width: 177,
                        height: 128,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppStyles.violetLightColor,
                        ),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (ctx) => VegetableDetailScreen(
                                    vegetable: vegetables[index]),
                              ),
                            );
                          },
                          child: Image.asset(
                            vegetables[index].imageUrl,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 177,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: 177,
                              height: 24,
                              child: Text(vegetables[index].name,
                                  style: AppStyles.violetDarkTextStyle18),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            SizedBox(
                              width: 110,
                              height: 22,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Flexible(
                                    child: Text(
                                      vegetables[index]
                                          .price
                                          .toStringAsFixed(2),
                                      style: AppStyles.detailTextStyle22,
                                    ),
                                  ),
                                  Center(
                                    child: Text(
                                      '€ /${vegetables[index].unit.name}',
                                      textAlign: TextAlign.center,
                                      style: AppStyles.violetTextStyle16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: 177,
                              height: 40,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin:
                                        const EdgeInsets.fromLTRB(0, 0, 20, 0),
                                    width: 78,
                                    height: 40,
                                    child: OutlinedButton(
                                        onPressed: () => {
                                              context
                                                  .read<FavoritesCubit>()
                                                  .clickFavorite(
                                                      vegetables[index],
                                                      vegetables[index]
                                                          .isFavorite),
                                            },
                                        style: OutlinedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(8.0),
                                          ),
                                          backgroundColor:
                                              AppStyles.whiteBtnColor,
                                        ),
                                        child: state.when(
                                            initial: () => SvgPicture.asset(
                                                  'assets/svg/heart.svg',
                                                  width: 20,
                                                  height: 20,
                                                ),
                                            favorite: (vegetable, isFavorite) =>
                                                vegetables[index].isFavorite ==
                                                        false
                                                    ? SvgPicture.asset(
                                                        'assets/svg/heart.svg',
                                                        width: 20,
                                                        height: 20,
                                                      )
                                                    : SvgPicture.asset(
                                                        'assets/svg/favorite.svg',
                                                        width: 20,
                                                        height: 20,
                                                      ))),
                                  ),
                                  SizedBox(
                                    width: 78,
                                    height: 40,
                                    child: IconButton(
                                      color: AppStyles.greenBtnColor,
                                      icon: SvgPicture.asset(
                                        'assets/svg/shopping-cart.svg',
                                        width: 20,
                                        height: 20,
                                      ),
                                      onPressed: () {},
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                        ),
                                        backgroundColor:
                                            AppStyles.greenBtnColor,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ]),
              );
            },
          ),
        );
      },
    );
  }
}
