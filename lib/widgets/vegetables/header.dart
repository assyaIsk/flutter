import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegetables/styles/style.dart';
import 'package:vegetables/widgets/back_arrow.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.screenName, required this.isFirstTab});
  final String screenName;
  final bool isFirstTab;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 215,
      child: Stack(
        children: [
          Positioned(
            left: 232,
            top: -40,
            child: Center(
              child: SvgPicture.asset(
                'assets/svg/vegetables.svg',
                width: 234,
                height: 234,
              ),
            ),
          ),
          Positioned(
            left: 20,
            top: 97,
            child: Align(
              child: SizedBox(
                width: 158,
                height: 41,
                child:
                    Text(screenName, style: AppStyles.detailTitleTextStyle30),
              ),
            ),
          ),
          if (isFirstTab)
            Positioned(
              left: 20,
              top: 165,
              child: Container(
                padding: const EdgeInsets.fromLTRB(22, 12, 22, 12),
                width: 374,
                height: 48,
                decoration: BoxDecoration(
                  border: Border.all(color: AppStyles.violetColor3),
                  color: AppStyles.whiteBtnColor,
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Container(
                        margin: const EdgeInsets.fromLTRB(0, 0, 16, 0),
                        child: SvgPicture.asset(
                          'assets/svg/search.svg',
                          width: 24,
                          height: 24,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 290,
                      height: 24,
                      child: Text('Search',
                          style: AppStyles.detailVioletTextStyle17),
                    ),
                  ],
                ),
              ),
            ),
          const Positioned(left: 0, top: 0, child: BackArrow()),
        ],
      ),
    );
  }
}
