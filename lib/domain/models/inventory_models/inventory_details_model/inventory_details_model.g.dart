// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_details_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryDetailsModel _$InventoryDetailsModelFromJson(
        Map<String, dynamic> json) =>
    InventoryDetailsModel(
      brand: json['brand'] as String?,
      categoryId: json['category_id'] as int?,
      id: json['id'] as int?,
      images: json['images'] as Map<String, dynamic>?,
      isBlocked: json['is_blocked'] as bool?,
      isWishlisted: json['is_wishlisted'] as bool?,
      price: json['price'] as int?,
      productDesc: json['product_description'] as String?,
      productName: json['product_name'] as String?,
      ratingAndReviews: (json['rating_and_reviews'] as List<dynamic>?)
          ?.map((e) => RatingAndReview.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InventoryDetailsModelToJson(
        InventoryDetailsModel instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'category_id': instance.categoryId,
      'id': instance.id,
      'is_blocked': instance.isBlocked,
      'images': instance.images,
      'is_wishlisted': instance.isWishlisted,
      'price': instance.price,
      'product_description': instance.productDesc,
      'product_name': instance.productName,
      'rating_and_reviews': instance.ratingAndReviews,
    };
