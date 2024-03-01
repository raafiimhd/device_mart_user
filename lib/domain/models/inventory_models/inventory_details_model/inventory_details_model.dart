import 'package:device/domain/models/inventory_models/inventory_details_model/rating_and_review_model/rating_and_review_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'inventory_details_model.g.dart';

@JsonSerializable()
class InventoryDetailsModel {
  String? brand;
  @JsonKey(name: 'category_id')
  int? categoryId;
  int? id;
  @JsonKey(name: 'is_blocked')
  bool? isBlocked;
  Map<String, dynamic>? images;
  @JsonKey(name: 'is_wishlisted')
  bool? isWishlisted;
  int? price;
  @JsonKey(name: 'product_description')
  String? productDesc;
  @JsonKey(name: 'product_name')
  String? productName;
  @JsonKey(name: 'rating_and_reviews')
  List<RatingAndReview>? ratingAndReviews;

  InventoryDetailsModel(
      {this.brand,
      this.categoryId,
      this.id,
      this.images,
      this.isBlocked,
      this.isWishlisted,
      this.price,
      this.productDesc,
      this.productName,
      this.ratingAndReviews});

  factory InventoryDetailsModel.fromJson(Map<String, dynamic> json) {
    return _$InventoryDetailsModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$InventoryDetailsModelToJson(this);
}
