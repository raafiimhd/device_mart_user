// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryModel _$InventoryModelFromJson(Map<String, dynamic> json) =>
    InventoryModel(
      brand: json['brand'] as String?,
      categoryId: json['categoryId'] as int?,
      images: json['images'] as Map<String, dynamic>?,
      id: json['id'] as int?,
      isBlocked: json['is_blocked'] as bool?,
      isWishlisted: json['is_wishlisted'] as bool?,
      price: json['price'] as int?,
      productDesc: json['product_description'] as String?,
      productName: json['product_name'] as String?,
    );

Map<String, dynamic> _$InventoryModelToJson(InventoryModel instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'categoryId': instance.categoryId,
      'id': instance.id,
      'images': instance.images,
      'product_name': instance.productName,
      'product_description': instance.productDesc,
      'is_blocked': instance.isBlocked,
      'is_wishlisted': instance.isWishlisted,
      'price': instance.price,
    };
