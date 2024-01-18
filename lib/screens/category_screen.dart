import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegetables/cubits/cubit/my_states_cubit.dart';
import 'package:vegetables/models/categories_model.dart';
import 'package:vegetables/widgets/header/header.dart';
import '../widgets/categories/category_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CategoryCubit, CategoryState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Column(
          children: [
            const Header(screenName: 'Categories', isFirstTab: true),
            Expanded(
              child: GridView(
                padding: const EdgeInsets.all(20),
                scrollDirection: Axis.vertical,
                gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    childAspectRatio: 1,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20,
                    maxCrossAxisExtent: 200),
                children: categories.map((item) {
                  return GestureDetector(
                    child: CategoryItem(category: item),
                    onTap: () => {
                      context.read<CategoryCubit>().selectCategory(),
                    },
                  );
                }).toList(),
              ),
            ),
          ],
        );
      },
    );
  }
}
