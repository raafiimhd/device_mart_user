// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => SearchModel(
      productName: json['product_name'] as String?,
      productDescp: json['product_description'] as String?,
      brand: json['brand'] as String?,
      id: json['id'] as int?,
      categoryId: json['category_id'] as int?,
      images: json['images'] as Map<String, dynamic>?,
      price: json['price'] as int?,
    );

Map<String, dynamic> _$SearchModelToJson(SearchModel instance) =>
    <String, dynamic>{
      'product_name': instance.productName,
      'product_description': instance.productDescp,
      'brand': instance.brand,
      'id': instance.id,
      'category_id': instance.categoryId,
      'images': instance.images,
      'price': instance.price,
    };
