import 'package:freezed_annotation/freezed_annotation.dart';
part 'category.freezed.dart';

@freezed
class CategoryModel with _$CategoryModel {
  const factory CategoryModel({
    required String name,
    required int count,
    required String image,
  }) = _CategoryModel;
}
