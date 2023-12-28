import 'package:flutter/material.dart';
import 'package:vegetables/models/vegetable_model.dart';
import 'package:vegetables/styles/style.dart';
import 'package:vegetables/widgets/vegetables/category_list.dart';
import 'package:vegetables/widgets/vegetables/header.dart';
import 'package:vegetables/widgets/vegetables/vegetable_list.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: const BoxDecoration(color: AppStyles.backgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header
          const Header(),
          // categories
          const CategoryList(),
          //list of vegetables
          VegetableList(vegetables: vegetables),
        ],
      ),
    );
  }
}
