import 'package:flutter/material.dart';
import 'package:vegetables/styles/style.dart';
import 'package:vegetables/widgets/vegetables/category_list.dart';
import 'package:vegetables/widgets/vegetables/header.dart';
import 'package:vegetables/widgets/vegetables/vegetable_list.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const DecoratedBox(
      decoration: BoxDecoration(color: AppStyles.backgroundColor),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //header
          Header(),
          // categories
          CategoryList(),
          //list of vegetables
          VegetableList(),
        ],
      ),
    );
  }
}
