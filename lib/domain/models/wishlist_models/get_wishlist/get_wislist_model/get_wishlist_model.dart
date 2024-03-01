import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_wishlist_model.g.dart';

@JsonSerializable()
class GetWishlistModel {
  String? brand;
  @JsonKey(name: 'category_id')
  int? categoryId;
  int? id;
  Map<String, dynamic>? images;
  @JsonKey(name: 'is_blocked')
  bool? isBlocked;
  @JsonKey(name: 'is_wishlisted')
  bool? isWislisted;
  int? price;
  @JsonKey(name: 'product_description')
  String? productDesc;
  @JsonKey(name: 'product_name')
  String? productName;

  GetWishlistModel(
      {this.brand,
      this.categoryId,
      this.id,
      this.images,
      this.isBlocked,
      this.isWislisted,
      this.price,
      this.productDesc,
      this.productName});

  factory GetWishlistModel.fromJson(Map<String, dynamic> json) =>
      _$GetWishlistModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetWishlistModelToJson(this);
}
