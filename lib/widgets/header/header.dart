import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegetables/styles/style.dart';
import 'package:vegetables/widgets/header/back_arrow.dart';

class Header extends StatelessWidget {
  const Header({super.key, required this.screenName, required this.isFirstTab});
  final String screenName;
  final bool isFirstTab;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(
            'assets/svg/vegetables.svg',
          ),
        ),
        Column(
          children: [
            const BackArrow(),
            Text(
              screenName,
              style: AppStyles.detailTitleTextStyle30,
              textAlign: TextAlign.start,
            ),
            if (isFirstTab)
              Container(
                width: MediaQuery.of(context).size.width - 40,
                padding: const EdgeInsets.fromLTRB(22, 12, 22, 12),
                decoration: BoxDecoration(
                  border: Border.all(color: AppStyles.violetColor3),
                  color: AppStyles.whiteBtnColor,
                  borderRadius: BorderRadius.circular(27),
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/svg/search.svg',
                    ),
                    const Text('Search',
                        style: AppStyles.detailVioletTextStyle17),
                  ],
                ),
              ),
            const SizedBox(height: 20)
          ],
        ),
      ],
    );
  }
}
