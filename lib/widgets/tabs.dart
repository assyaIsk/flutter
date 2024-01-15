import 'package:flutter/material.dart';
import 'package:vegetables/models/vegetable_model.dart';
import 'package:vegetables/screens/category_screen.dart';
import 'package:vegetables/screens/favorites_screen.dart';
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

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget activePage = const VegetablesScreen();

    if (_selectedPageIndex == 1) {
      final favoriteVegetales = vegetables;
      activePage = FavoritesScreen(
        vegetables: favoriteVegetales,
      );
    }

    if (_selectedPageIndex == 2) {
      activePage = const CategoryScreen();
    }

    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: AppStyles.backgroundColor,
      body: activePage,
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
