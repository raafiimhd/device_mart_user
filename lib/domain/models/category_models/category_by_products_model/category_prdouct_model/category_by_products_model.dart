import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_by_products_model.g.dart';

@JsonSerializable()
class CategoryByProductsModel {
  String? brand;
  @JsonKey(name: 'category_id')
  int? categoryId;
  int? id;
  Map<String, dynamic>? images;
  bool? isBlocked;
  @JsonKey(name: 'is_wishlisted')
  bool? isWishlisted;
  @JsonKey(name: 'product_name')
  String? productName;
  @JsonKey(name: 'product_description')
  String? productDesc;
  int? price;

  CategoryByProductsModel(
      {this.brand,
      this.categoryId,
      this.id,
      this.images,
      this.isBlocked,
      this.isWishlisted,
      this.price,
      this.productDesc,
      this.productName});

  factory CategoryByProductsModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryByProductsModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryByProductsModelToJson(this);
}
