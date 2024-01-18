import 'package:flutter/material.dart';
import 'package:vegetables/models/vegetable_model.dart';
import 'package:vegetables/widgets/categories/category_list.dart';
import 'package:vegetables/widgets/header/header.dart';
import 'package:vegetables/widgets/vegetables/vegetable_list.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //header
        const Header(
          screenName: 'Vegetables',
          isFirstTab: true,
        ),
        // categories
        const CategoryList(),
        //list of vegetables
        VegetableList(vegetables: vegetables),
      ],
    );
  }
}
