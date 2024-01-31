import 'package:flutter/material.dart';
import 'package:vegetables/models/category.dart';
import 'package:vegetables/styles/style.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Stack(children: [
        Image.asset(
          category.image == "" ? 'assets/png/default.png' : category.image,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 2,
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                decoration: const BoxDecoration(color: AppStyles.cardColor),
                child: Text(
                  category.name,
                  style: AppStyles.violetDarkTextStyle18,
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                padding: const EdgeInsets.only(bottom: 5),
                child: Text(
                  "(${category.count})",
                  style: AppStyles.violetTextStyle12,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
