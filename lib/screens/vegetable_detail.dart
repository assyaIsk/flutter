import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegetables/data/vegetables.dart';

class VegetableDetailScreen extends StatelessWidget {
  const VegetableDetailScreen({super.key, required this.vegetable});
  final Vegetables vegetable;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: 896,
        decoration: const BoxDecoration(
          color: Color(0xfff6f5f5),
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
                    color: Color(0xffdbd8dd),
                  ),
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
                padding: const EdgeInsets.fromLTRB(21, 62, 21, 22),
                width: 414,
                height: 96,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    width: 6,
                    height: 12,
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
            ),
            Positioned(
              left: 0,
              top: 281,
              child: Container(
                padding: const EdgeInsets.fromLTRB(20, 37, 20, 65),
                width: 414,
                height: 615,
                decoration: const BoxDecoration(
                  color: Color(0xfff6f5f5),
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
                        style: const TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w700,
                          height: 1.3666666667,
                          letterSpacing: 0.41,
                          color: Color(0xff2d0c57),
                        ),
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
                              style: const TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.w700,
                                height: 1.3463542461,
                                letterSpacing: -0.8029167056,
                                color: Color(0xff2d0c57),
                              ),
                            ),
                          ),
                          Text(
                            '€ / ${vegetable.unit.name}',
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w400,
                              height: 1.7951389949,
                              letterSpacing: -0.8029167056,
                              color: Color(0xff9586a8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 32),
                      child: const Text(
                        '~ 150 gr / piece',
                        style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                          height: 1.5,
                          letterSpacing: -0.41,
                          color: Color(0xff05be77),
                        ),
                      ),
                    ),
                    Container(
                      // title3A7 (102:4859)
                      margin: const EdgeInsets.fromLTRB(0, 0, 0, 18),
                      child: const Text(
                        'Spain',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          height: 1,
                          letterSpacing: -0.41,
                          color: Color(0xff2d0c57),
                        ),
                      ),
                    ),
                    Container(
                      // textAkX (102:4862)
                      margin: const EdgeInsets.fromLTRB(1, 0, 0, 90),
                      constraints: const BoxConstraints(
                        maxWidth: 362,
                      ),
                      child: Text(
                        vegetable.text,
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w400,
                          height: 1.5,
                          letterSpacing: -0.41,
                          color: Color(0xff9586a8),
                        ),
                      ),
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
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                backgroundColor: const Color(0xFFFFFFFF),
                              ),
                              child: SvgPicture.asset(
                                'assets/svg/heart.svg',
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
                                style: TextStyle(color: Colors.white),
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
                                backgroundColor: const Color(0xFF0BCE83),
                              ),
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
