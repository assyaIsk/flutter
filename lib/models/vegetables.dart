import 'package:freezed_annotation/freezed_annotation.dart';
part 'vegetables.freezed.dart';

enum Units { piece, kg }

@unfreezed
class VegetablesModel with _$VegetablesModel {
  factory VegetablesModel(
      {required final String name,
      required final double price,
      required final Units unit,
      required final String imageUrl,
      required final String text,
      required final List<String> imageUrls,
      @Default(false) bool isFavorite}) = _VegetablesModel;
}
