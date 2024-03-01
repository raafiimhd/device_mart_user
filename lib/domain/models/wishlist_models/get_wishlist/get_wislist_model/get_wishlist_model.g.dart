// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_wishlist_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWishlistModel _$GetWishlistModelFromJson(Map<String, dynamic> json) =>
    GetWishlistModel(
      brand: json['brand'] as String?,
      categoryId: json['category_id'] as int?,
      id: json['id'] as int?,
      images: json['images'] as Map<String, dynamic>?,
      isBlocked: json['is_blocked'] as bool?,
      isWislisted: json['is_wishlisted'] as bool?,
      price: json['price'] as int?,
      productDesc: json['product_description'] as String?,
      productName: json['product_name'] as String?,
    );

Map<String, dynamic> _$GetWishlistModelToJson(GetWishlistModel instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'category_id': instance.categoryId,
      'id': instance.id,
      'images': instance.images,
      'is_blocked': instance.isBlocked,
      'is_wishlisted': instance.isWislisted,
      'price': instance.price,
      'product_description': instance.productDesc,
      'product_name': instance.productName,
    };
