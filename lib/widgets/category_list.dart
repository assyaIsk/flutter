import 'package:flutter/material.dart';
import 'package:vegetables/data/categories.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 40, 0, 32),
      width: double.infinity,
      child: Wrap(
        spacing: 8.0, // Промежуток между элементами
        runSpacing: 10.0, // Промежуток между строками
        children: categories.map((item) {
          return FilterChip(
            onSelected: (bool value) {},
            // Используем Chip, но вы можете использовать другие виджеты по вашему выбору
            selected: item.active,
            label: (item.active)
                ? Text(
                    '${item.name} (${item.count})',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Color(0xFF6C0EE4),
                    ),
                  )
                : Text(
                    '${item.name} (${item.count})',
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF9586A8),
                    ),
                  ),
            shape: RoundedRectangleBorder(
              side: const BorderSide(),
              borderRadius: BorderRadius.circular(17.0),
            ),

            backgroundColor: (item.active)
                ? const Color(0xFFE2CBFF)
                : const Color(0xFFFFFFFF),
          );
        }).toList(),
      ),
    );
  }
}
