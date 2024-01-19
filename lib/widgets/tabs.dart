import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegetables/cubits/cubit/my_states_cubit.dart';
import 'package:vegetables/screens/category_screen.dart';
import 'package:vegetables/screens/favorites_screen.dart';
import 'package:vegetables/screens/profile.dart';
import 'package:vegetables/screens/vegetables_screen.dart';
import 'package:vegetables/styles/style.dart';

class Tabs extends StatefulWidget {
  const Tabs({super.key});

  @override
  State<Tabs> createState() {
    return _Tabs();
  }
}

class _Tabs extends State<Tabs> {
  int _selectedPageIndex = 0;
  bool categorySelected = false;

  void _selectPage(int index) {
    setState(() {
      context.read<CategoryCubit>().unselectCategory();
      context.read<SearchCubit>().resetSearch();
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategoryScreen();

    if (_selectedPageIndex == 1) {
      activePage = const FavoritesScreen();
    }

    if (_selectedPageIndex == 2) {
      activePage = const Center(child: ProfileScreen());
    }

    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: AppStyles.backgroundColor,
      body: BlocConsumer<CategoryCubit, CategoryState>(
        listener: (context, state) {},
        builder: (context, state) {
          return state.when(
              initial: () => activePage,
              selectedCategory: () => const VegetablesScreen(),
              unselectCategory: () => activePage);
        },
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: _selectPage,
        selectedIndex: _selectedPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.grid_view_rounded),
            label: 'Categories',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Favorites',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle_outlined),
            label: 'User',
          ),
        ],
      ),
    );
  }
}
