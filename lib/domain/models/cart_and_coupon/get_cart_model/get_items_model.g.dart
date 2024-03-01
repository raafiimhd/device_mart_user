// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_items_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Items _$ItemsFromJson(Map<String, dynamic> json) => Items(
      brand: json['brand'] as String?,
      cartId: json['cart_id'] as int?,
      price: json['price'] as int?,
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      images: json['images'] as Map<String, dynamic>?,
      qty: json['qty'] as int?,
    );

Map<String, dynamic> _$ItemsToJson(Items instance) => <String, dynamic>{
      'brand': instance.brand,
      'cart_id': instance.cartId,
      'images': instance.images,
      'price': instance.price,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'qty': instance.qty,
    };
