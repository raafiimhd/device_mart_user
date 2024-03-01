// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_by_products_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryByProductsModel _$CategoryByProductsModelFromJson(
        Map<String, dynamic> json) =>
    CategoryByProductsModel(
      brand: json['brand'] as String?,
      categoryId: json['category_id'] as int?,
      id: json['id'] as int?,
      images: json['images'] as Map<String, dynamic>?,
      isBlocked: json['isBlocked'] as bool?,
      isWishlisted: json['is_wishlisted'] as bool?,
      price: json['price'] as int?,
      productDesc: json['product_description'] as String?,
      productName: json['product_name'] as String?,
    );

Map<String, dynamic> _$CategoryByProductsModelToJson(
        CategoryByProductsModel instance) =>
    <String, dynamic>{
      'brand': instance.brand,
      'category_id': instance.categoryId,
      'id': instance.id,
      'images': instance.images,
      'isBlocked': instance.isBlocked,
      'is_wishlisted': instance.isWishlisted,
      'product_name': instance.productName,
      'product_description': instance.productDesc,
      'price': instance.price,
    };
