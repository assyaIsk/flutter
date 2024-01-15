import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vegetables/data/vegetables.dart';

part 'favorites_state.dart';
part 'favorites_cubit.freezed.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit() : super(const FavoritesState.initial());

  void clickFavorite(Vegetables vegetable, bool isVegetable) {
    vegetable.isFavorite = !vegetable.isFavorite;
    emit(FavoritesState.favorite(vegetable, isVegetable));
  }
}
