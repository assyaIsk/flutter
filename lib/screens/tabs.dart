import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:vegetables/providers/favorites_provider.dart';
import 'package:vegetables/screens/favorites_screen.dart';
import 'package:vegetables/screens/vegetables_screen.dart';

class Tabs extends ConsumerStatefulWidget {
  const Tabs({super.key});

  @override
  ConsumerState<Tabs> createState() {
    return _Footer();
  }
}

class _Footer extends ConsumerState<Tabs> {
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
      final favoriteVegetales = ref.watch(favoriteVegetablesProvider);
      activePage = FavoritesScreen(
        vegetables: favoriteVegetales,
      );
    }

    return Scaffold(
      //appBar: AppBar(),
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
