import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegetables/models/vegetables.dart';
import 'package:vegetables/styles/style.dart';
import 'package:vegetables/widgets/header/back_arrow.dart';

import '../widgets/vegetables/fav_button.dart';
import '../widgets/vegetables/image_slider.dart';

class VegetableDetailScreen extends StatelessWidget {
  const VegetableDetailScreen({super.key, required this.vegetable});
  final VegetablesModel vegetable;

  @override
  Widget build(BuildContext context) {
    final quarterWidth = MediaQuery.of(context).size.width / 2 - 40;

    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          color: AppStyles.backgroundColor,
        ),
        child: Stack(
          children: [
            ImageSlider(imageUrls: vegetable.imageUrls),
            const Positioned(left: 0, top: 0, child: BackArrow()),
            Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Container(
                padding: const EdgeInsets.fromLTRB(20, 37, 20, 65),
                height: MediaQuery.of(context).size.height * 2 / 3,
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
                        const Text('~ 150 gr / piece',
                            style: AppStyles.detailGreenTextStyle17),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Spain', style: AppStyles.detailTextStyle22),
                        Text(vegetable.text,
                            style: AppStyles.detailVioletTextStyle17),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        FavButton(
                            vegetable: vegetable, quarterWidth: quarterWidth),
                        SizedBox(
                          width: quarterWidth,
                          child: TextButton.icon(
                            label: const Text(
                              'ADD TO CART',
                              style: AppStyles.whiteTextStyle15,
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
            ]),
          ],
        ),
      ),
    );
  }
}
