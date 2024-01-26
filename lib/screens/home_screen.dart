import 'package:flutter/material.dart';
import 'package:vegetables/styles/style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppStyles.backgroundColorHome,
        // appBar: AppBar(
        //   backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        //   title: const Text('Home screen'),
        // ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Non-Contact \nDeliveries!',
                      style: AppStyles.detailTitleTextStyle30,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'When placing an order, select the option “Contactless delivery” and the courier will leave your order at the door.',
                      style: AppStyles.detailVioletTextStyle17,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      style: OutlinedButton.styleFrom(
                          maximumSize: const Size(370, 56),
                          minimumSize: const Size(300, 56),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          backgroundColor: AppStyles.greenBtnColor),
                      child: Text(
                        'order now'.toUpperCase(),
                        style: AppStyles.whiteTextStyle15,
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/vegetables');
                      },
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
