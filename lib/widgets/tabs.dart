import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vegetables/cubits/cubit/my_states_cubit.dart';
import 'package:vegetables/screens/cart_screen.dart';
import 'package:vegetables/screens/category_screen.dart';
import 'package:vegetables/screens/favorites_screen.dart';
import 'package:vegetables/screens/profile.dart';
import 'package:vegetables/screens/vegetables_screen.dart';
import 'package:vegetables/styles/style.dart';
import 'package:badges/badges.dart' as badges;

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
  int countInCart = 0;
  @override
  Widget build(BuildContext context) {
    Widget activePage = const CategoryScreen();

    if (_selectedPageIndex == 1) {
      activePage = const FavoritesScreen();
    }

    if (_selectedPageIndex == 2) {
      activePage = const CartScreen();
    }
    if (_selectedPageIndex == 3) {
      activePage = const Center(child: ProfileScreen());
    }

    return Scaffold(
      //appBar: AppBar(),
      backgroundColor: AppStyles.backgroundColor,
      body: BlocBuilder<CategoryCubit, CategoryState>(
        builder: (context, state) {
          return state.maybeWhen(
            selectedCategory: () => const VegetablesScreen(),
            orElse: () => activePage,
          );
        },
      ),
      bottomNavigationBar: BlocBuilder<CartCubit, CartState>(
        builder: (context, state) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: _selectedPageIndex,
            onTap: (index) {
              setState(() {
                context.read<CategoryCubit>().unselectCategory();
                context.read<SearchCubit>().resetSearchCategory();
                _selectedPageIndex = index;
              });
            },
            items: [
              const BottomNavigationBarItem(
                icon: Icon(Icons.grid_view_rounded),
                label: 'Categories',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                label: 'Favorites',
              ),
              BottomNavigationBarItem(
                icon: state.maybeWhen(
                    orElse: () => const Icon(Icons.shopping_cart_outlined),
                    addToCart: (count) {
                      return badges.Badge(
                        badgeContent:
                            Text(count.toString()), // Количество уведомлений
                        child: const Icon(Icons.shopping_cart_outlined),
                      );
                    }),
                label: 'Cart',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                label: 'User',
              ),
            ],
          );
        },
      ),
    );
  }
}
