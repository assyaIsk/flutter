import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BackArrow extends StatelessWidget {
  const BackArrow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(21, 42, 367, 22),
      child: Align(
          alignment: Alignment.centerLeft,
          child: InkWell(
            onTap: () => Navigator.pop(context),
            customBorder:
                const CircleBorder(), // You can use other shapes or BorderRadius for custom shapes
            child: Container(
              padding: const EdgeInsets.fromLTRB(0, 5, 5, 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(13),
                color: const Color.fromARGB(100, 255, 255, 255),
              ),
              width: 50, // Adjust the size of the container as needed
              height: 50, // Adjust the size of the container as needed
              child: Align(
                alignment: Alignment.center,
                child: SvgPicture.asset(
                  'assets/svg/Vector.svg',
                  width: 15, // Set the width of the image
                  height: 15, // Set the height of the image
                ),
              ),
            ),
          )),
    );
  }
}
