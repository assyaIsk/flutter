import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(21, 42, 367, 22),
      width: 414,
      height: 96,
      child: Align(
        alignment: Alignment.centerLeft,
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () => Navigator.pop(context),
          child: Container(
            padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: const Color.fromARGB(100, 255, 255, 255)),
            width: 25,
            height: 25,
            child: SvgPicture.asset(
              'assets/svg/Vector.svg',
            ),
          ),
        ),
      ),
    );
  }
}
