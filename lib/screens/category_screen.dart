import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegetables/cubits/cubit/my_states_cubit.dart';
import 'package:vegetables/data/categories_data.dart';
import 'package:vegetables/widgets/header/header.dart';
import '../widgets/categories/category_item.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String searchText = '';
    return BlocBuilder<SearchCubit, SearchState>(
      builder: (context, state) {
        state.when(
          initial: () => searchText = '',
          search: (value) => searchText = value,
        );
        return Column(
          children: [
            const Header(screenName: 'Categories', isFirstTab: true),
            Expanded(child: MyGridWidget(searchText: searchText)),
          ],
        );
      },
    );
  }
}

class MyGridWidget extends StatelessWidget {
  const MyGridWidget({super.key, required this.searchText});
  final String searchText;
  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: const EdgeInsets.all(20),
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          childAspectRatio: 1,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          maxCrossAxisExtent: 200),
      children: categories
          .where((e) => e.name.toUpperCase().contains(searchText.toUpperCase()))
          .map((item) {
        return BlocBuilder<CategoryCubit, CategoryState>(
          builder: (context, state) {
            return GestureDetector(
              child: CategoryItem(category: item),
              onTap: () => {
                context.read<CategoryCubit>().selectCategory(),
                context.read<SearchCubit>().resetSearch()
              },
            );
          },
        );
      }).toList(),
    );
  }
}
