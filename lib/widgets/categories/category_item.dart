import 'package:flutter/material.dart';
import 'package:vegetables/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});
  final CategoryModel category;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Center(child: Text(category.name)),
    );
  }
}
