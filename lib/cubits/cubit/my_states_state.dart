part of 'my_states_cubit.dart';

@freezed
class FavoritesState with _$FavoritesState {
  const factory FavoritesState.initial() = _Initial;
  const factory FavoritesState.favorite(Vegetables vegetable, bool isFavorite) =
      _Favorite;
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
  const factory SearchState.search(String value) = _Search;
}
