import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vegetables/models/vegetables.dart';
part 'cart.freezed.dart';

@freezed
class CartModel with _$CartModel {
  const factory CartModel({
    required VegetablesModel vegetable,
    @Default(0) int count,
  }) = _CartModel;
}
