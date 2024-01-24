import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vegetables/data/categories_data.dart';
import 'package:vegetables/data/vegetable_data.dart';
import 'package:vegetables/models/category.dart';
import 'package:vegetables/models/vegetables.dart';

part 'my_states_state.dart';
part 'my_states_cubit.freezed.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(const FavoritesState.initial());

  void clickFavorite(
      {required VegetablesModel vegetable, required bool isFavorite}) {
    vegetable.isFavorite = !vegetable.isFavorite;
    emit(FavoritesState.favorite(vegetable: vegetable, isFavorite: isFavorite));
  }

  checkfavorites() {
    return vegetables.where((e) => e.isFavorite).toList();
  }
}

class CategoryCubit extends Cubit<CategoryState> {
  CategoryCubit() : super(const CategoryState.initial());

  void selectCategory() {
    emit(const CategoryState.selectedCategory());
  }

  void unselectCategory() {
    emit(const CategoryState.unselectCategory());
  }
}

class SearchCubit extends Cubit<SearchState> {
  SearchCubit() : super(const SearchState.initial());

  void searchCategory(
      {required List<CategoryModel> categories, required String searchText}) {
    final List<CategoryModel> newList = categories
        .where((e) => e.name.toUpperCase().contains(searchText.toUpperCase()))
        .toList();
    emit(SearchState.searchCategory(categories: newList));
  }

  void searchVegetable(
      {required List<VegetablesModel> vegetables, required String searchText}) {
    final List<VegetablesModel> newList = vegetables
        .where((e) => e.name.toUpperCase().contains(searchText.toUpperCase()))
        .toList();
    emit(SearchState.searchVegetable(vegetables: newList));
  }

  void resetSearchCategory() {
    emit(SearchState.searchCategory(categories: categories));
  }

  void resetSearchVegetable({required List<VegetablesModel> vegetables}) {
    emit(SearchState.searchVegetable(vegetables: vegetables));
  }
}
