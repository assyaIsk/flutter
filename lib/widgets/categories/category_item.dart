import 'package:flutter/material.dart';
import 'package:vegetables/models/category.dart';
import 'package:vegetables/styles/style.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(children: [
        Image.asset(
            category.image == '' ? 'assets/png/default.png' : category.image),
        const SizedBox(
          height: 2,
        ),
        Text(
          category.name,
          style: AppStyles.violetDarkTextStyle18,
        )
      ]),
    );
  }
}
