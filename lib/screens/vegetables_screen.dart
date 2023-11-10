import 'package:flutter/material.dart';
import 'package:vegetables/widgets/vegetables/category_list.dart';
import 'package:vegetables/widgets/vegetables/header.dart';
import 'package:vegetables/widgets/vegetables/vegetable_list.dart';

class VegetablesScreen extends StatelessWidget {
  const VegetablesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0xFFF6F5F5),
      ),
      child: const Column(
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
