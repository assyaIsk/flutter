import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vegetables/styles/style.dart';
import 'package:vegetables/widgets/header/back_arrow.dart';

import 'search_panel.dart';

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const BackArrow(),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: Text(
                screenName,
                style: AppStyles.detailTitleTextStyle30,
                textAlign: TextAlign.start,
              ),
            ),
            if (isFirstTab)
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: SearchPanel(),
              ),
            const SizedBox(height: 20)
          ],
        ),
      ],
    );
  }
}
