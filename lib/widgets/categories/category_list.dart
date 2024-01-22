import 'package:flutter/material.dart';
import 'package:vegetables/data/subcategory_data.dart';
import 'package:vegetables/styles/style.dart';

class CategoryList extends StatefulWidget {
  const CategoryList({super.key});

  @override
  State<CategoryList> createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: GridView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            childAspectRatio: 1 / 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 8,
            maxCrossAxisExtent: 100),
        children: subcategories.map((item) {
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
