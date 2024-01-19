import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vegetables/data/vegetables.dart';

part 'my_states_state.dart';
part 'my_states_cubit.freezed.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(const FavoritesState.initial());

  void clickFavorite(Vegetables vegetable, bool isVegetable) {
    vegetable.isFavorite = !vegetable.isFavorite;
    emit(FavoritesState.favorite(vegetable, isVegetable));
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

  void search(String value) {
    emit(SearchState.search(value));
  }

  void resetSearch() {
    emit(const SearchState.search(''));
  }
}
