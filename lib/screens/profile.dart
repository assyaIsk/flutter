import 'package:flutter/material.dart';
import 'package:vegetables/data/subcategory_data.dart';
import 'package:vegetables/data/vegetable_data.dart';
import 'package:vegetables/styles/style.dart';
import 'package:vegetables/widgets/header/header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const Header(screenName: 'Profile', isFirstTab: false),
      const Text(
        "Selected categories:",
        style: AppStyles.violetDarkTextStyle18,
      ),
      ...subcategories.where((item) => item.active).map((item) {
        return ListTile(
          title: Text(item.name),
          leading: const Icon(Icons.check),
          iconColor: AppStyles.violetColor,
        );
      }).toList(),
      const Text(
        "Selected vegetables:",
        style: AppStyles.violetDarkTextStyle18,
      ),
      ...vegetables
          .where((item) => item.isFavorite)
          .map((item) => ListTile(
                title: Text(item.name),
                leading: const Icon(Icons.favorite),
                iconColor: AppStyles.redColor,
              ))
          .toList(),
    ]);
  }
}
