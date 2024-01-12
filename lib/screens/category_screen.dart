import 'package:flutter/material.dart';
import 'package:vegetables/models/categories_model.dart';
import 'package:vegetables/widgets/vegetables/header.dart';

import '../widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Header(screenName: 'Categories', isFirstTab: true),
        Expanded(
          child: GridView(
            padding: const EdgeInsets.all(20),
            scrollDirection: Axis.vertical,
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 1,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                maxCrossAxisExtent: 200),
            children: categories.map((item) {
              return CategoryItem(category: item);
            }).toList(),
          ),
        ),
      ],
    );
  }
}
