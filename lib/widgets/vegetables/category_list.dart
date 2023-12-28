import 'package:flutter/material.dart';
import 'package:vegetables/data/categories.dart';
import 'package:vegetables/styles/style.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 40, 0, 32),
      child: Wrap(
        spacing: 8.0,
        runSpacing: 10.0,
        children: categories.map((item) {
          return FilterChip(
              onSelected: (bool value) {
                setState(() {
                  item.active = !item.active;
                });
              },
              selected: item.active,
              label: Text(
                '${item.name} (${item.count})',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: item.active ? FontWeight.w500 : FontWeight.w400,
                    color: item.active
                        ? AppStyles.blueColor
                        : AppStyles.violetColor),
              ),
              shape: RoundedRectangleBorder(
                side: const BorderSide(),
                borderRadius: BorderRadius.circular(17.0),
              ),
              backgroundColor: item.active
                  ? AppStyles.violetColor2
                  : AppStyles.whiteBtnColor);
        }).toList(),
      ),
    );
  }
}
