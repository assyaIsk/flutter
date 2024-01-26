part of 'my_states_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.favorite({required VegetablesModel vegetable}) =
      _Favorite;
  const factory FavoritesState.unFavorite(
      {required VegetablesModel vegetable}) = _UnFavorite;
}

@freezed
class CategoryState with _$CategoryState {
  const factory CategoryState.initial() = _InitialCategory;
  const factory CategoryState.selectedCategory() = _SelectedCategory;
  const factory CategoryState.unselectCategory() = _UnselectCategory;
}

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _InitialSearch;
  const factory SearchState.searchCategory(
      {required List<CategoryModel> categories}) = _SearchCategory;
  const factory SearchState.searchVegetable(
      {required List<VegetablesModel> vegetables}) = _SearchVegetable;
}
