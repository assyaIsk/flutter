import 'package:freezed_annotation/freezed_annotation.dart';
part 'subcategory.freezed.dart';

@unfreezed
class SubCategory with _$SubCategory {
  factory SubCategory(
      {required final String name,
      required final int count,
      @Default(false) bool active}) = _SubCategory;
}
