import 'package:freezed_annotation/freezed_annotation.dart';
part 'subcategory.freezed.dart';

@unfreezed
class SubCategoryModel with _$SubCategoryModel {
  factory SubCategoryModel(
      {required final String name,
      required final int count,
      @Default(false) bool active}) = _SubCategoryModel;
}
