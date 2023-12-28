import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegetables/data/vegetables.dart';
import 'package:vegetables/providers/favorites_provider.dart';
import 'package:vegetables/styles/style.dart';

class VegetableDetailScreen extends ConsumerWidget {
  const VegetableDetailScreen({super.key, required this.vegetable});
  final Vegetables vegetable;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 896,
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
                  decoration:
                      const BoxDecoration(color: AppStyles.violetLightColor),
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
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.fromLTRB(21, 62, 387, 22),
                width: 414,
                height: 96,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: SvgPicture.asset(
                      'assets/svg/Vector.svg',
                      width: 6,
                      height: 12,
                    ),
                  ),
                ),
              ),
            ),
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
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 16),
                      child: Text(
                        vegetable.name,
                        style: AppStyles.detailTitleTextStyle30,
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 223, 8),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
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
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 32),
                      child: const Text('~ 150 gr / piece',
                          style: AppStyles.detailGreenTextStyle17),
                    ),
                    Container(
                      // title3A7 (102:4859)
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                      child: const Text('Spain',
                          style: AppStyles.detailTextStyle22),
                    ),
                    Container(
                      // textAkX (102:4862)
                      margin: const EdgeInsets.fromLTRB(1, 0, 0, 90),
                      constraints: const BoxConstraints(
                        maxWidth: 362,
                      ),
                      child: Text(vegetable.text,
                          style: AppStyles.detailVioletTextStyle17),
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: const EdgeInsets.fromLTRB(0, 0, 20, 0),
                            width: 78,
                            height: 56,
                            child: OutlinedButton(
                              onPressed: () {
                                ref
                                    .read(favoriteVegetablesProvider.notifier)
                                    .toggleVegetableFavoriteStatus(vegetable);
                              },
                              style: OutlinedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8.0),
                                  ),
                                  backgroundColor: AppStyles.whiteBtnColor),
                              child: vegetable.isFavorite == false
                                  ? SvgPicture.asset(
                                      'assets/svg/heart.svg',
                                      width: 20,
                                      height: 20,
                                    )
                                  : SvgPicture.asset(
                                      'assets/svg/favorite.svg',
                                      width: 20,
                                      height: 20,
                                    ),
                            ),
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
                                width: 20,
                                height: 20,
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
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
