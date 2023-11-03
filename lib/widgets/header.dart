import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 466,
      height: 253,
      child: Stack(
        children: [
          Positioned(
            left: 232,
            top: -40,
            child: SizedBox(
              width: 234,
              height: 234,
              child: Center(
                child: SizedBox(
                  width: 210.6,
                  height: 209.8,
                  child: SvgPicture.asset(
                    'assets/svg/vegetables.svg',
                    width: 234,
                    height: 234,
                  ),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 20,
            top: 97,
            child: Align(
              child: SizedBox(
                width: 158,
                height: 41,
                child: Text(
                  'Vegetables',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    letterSpacing: 0.41,
                    color: Color(0xFF2D0C57),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 165,
            child: Container(
              padding: const EdgeInsets.fromLTRB(25, 12, 265, 14),
              width: 374,
              height: 48,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xFFD9D0E3)),
                color: const Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(27),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(0, 2, 19, 0),
                      width: 24,
                      height: 24,
                      child: SvgPicture.asset(
                        'assets/svg/search.svg',
                        width: 24,
                        height: 24,
                      ),
                    ),
                  ),
                  const Text(
                    'Search',
                    style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.w400,
                      letterSpacing: -0.41,
                      color: Color(0xff9586a8),
                    ),
                  ),
                ],
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
                child: SizedBox(
                  width: 6,
                  height: 12,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
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
        ],
      ),
    );
  }
}
