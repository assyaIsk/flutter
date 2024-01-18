import 'package:freezed_annotation/freezed_annotation.dart';
part 'vegetables.freezed.dart';

enum Units { piece, kg }

@unfreezed
class Vegetables with _$Vegetables {
  factory Vegetables(
      {required final String name,
      required final double price,
      required final Units unit,
      required final String imageUrl,
      required final String text,
      @Default(false) bool isFavorite}) = _Vegetables;
}
