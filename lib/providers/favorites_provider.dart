import 'package:vegetables/data/vegetables.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoriteVegetablesNotifier extends StateNotifier<List<Vegetables>> {
  FavoriteVegetablesNotifier() : super([]);

  bool toggleVegetableFavoriteStatus(Vegetables vegetable) {
    final vegetableIsFavorite = state.contains(vegetable);

    if (vegetableIsFavorite) {
      vegetable.isFavorite = false;
      state = state.where((m) => m != vegetable).toList();
      return false;
    } else {
      vegetable.isFavorite = true;
      state = [...state, vegetable];
      return true;
    }
  }
}

final favoriteVegetablesProvider =
    StateNotifierProvider<FavoriteVegetablesNotifier, List<Vegetables>>((ref) {
  return FavoriteVegetablesNotifier();
});
