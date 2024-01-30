import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegetables/cubits/cubit/my_states_cubit.dart';
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
                iconColor: Colors.red,
              ))
          .toList(),
      Center(
        child: TextButton.icon(
          onPressed: () {
            context.read<CartCubit>().clearCart();
          },
          style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              backgroundColor: Colors.red),
          icon: const Icon(
            Icons.delete,
            color: Colors.white,
          ),
          label: const Text(
            'Clear Cart',
            style: AppStyles.whiteTextStyle15,
          ),
        ),
      )
    ]);
  }
}
