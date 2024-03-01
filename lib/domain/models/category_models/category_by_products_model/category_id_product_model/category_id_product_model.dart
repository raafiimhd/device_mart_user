import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_id_product_model.g.dart';

@JsonSerializable()
class CategoryIdProductModel {
  @JsonKey(name: 'categoryID')
  int? categoryId;
  CategoryIdProductModel({
    this.categoryId,
  });

  factory CategoryIdProductModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryIdProductModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryIdProductModelToJson(this);
}
