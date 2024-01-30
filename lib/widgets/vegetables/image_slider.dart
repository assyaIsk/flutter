import 'package:flutter/material.dart';
import 'package:vegetables/styles/style.dart';

class ImageSlider extends StatefulWidget {
  const ImageSlider({
    super.key,
    required this.imageUrls,
  });
  final List<String> imageUrls;

  @override
  State<ImageSlider> createState() => _ImageSliderState();
}

class _ImageSliderState extends State<ImageSlider> {
  int _currentIndex = 0;
  final PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height / 3 + 20,
        child: Stack(
          children: [
            PageView.builder(
              controller: pageController,
              itemCount: widget.imageUrls.length,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemBuilder: (context, index) {
                return Image.asset(
                  widget.imageUrls[index], // Используйте index здесь
                  fit: BoxFit.cover,
                );
              },
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                BottomAppBar(
                  color: Colors.black.withOpacity(0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      for (int i = 0; i < widget.imageUrls.length; i++)
                        GestureDetector(
                          onTap: () {
                            pageController.animateToPage(
                              i,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.ease,
                            );
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CircleAvatar(
                              radius: 8,
                              backgroundColor: _currentIndex == i
                                  ? AppStyles.blueColor
                                  : AppStyles.whiteBtnColor,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ));
  }
}
