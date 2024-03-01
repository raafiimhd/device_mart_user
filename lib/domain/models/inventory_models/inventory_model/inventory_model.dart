import 'package:freezed_annotation/freezed_annotation.dart';
part 'inventory_model.g.dart';

@JsonSerializable()
class InventoryModel {
  String? brand;
  int? categoryId;
  int? id;
  Map<String, dynamic>? images;
  @JsonKey(name: 'product_name')
  String? productName;
  @JsonKey(name: 'product_description')
  String? productDesc;
  @JsonKey(name: 'is_blocked')
  bool? isBlocked;
  @JsonKey(name: 'is_wishlisted')
  bool? isWishlisted;
  int? price;
  InventoryModel(
      {this.brand,
      this.categoryId,
      this.images,
      this.id,
      this.isBlocked,
      this.isWishlisted,
      this.price,
      this.productDesc,
      this.productName});
  factory InventoryModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryModelFromJson(json);

  Map<String, dynamic> toJson() => _$InventoryModelToJson(this);
}
