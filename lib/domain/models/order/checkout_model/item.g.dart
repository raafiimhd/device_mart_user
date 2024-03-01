// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Item _$ItemFromJson(Map<String, dynamic> json) => Item(
      brand: json['brand'] as String?,
      cartId: json['cart_id'] as int?,
      images: json['images'] as Map<String, dynamic>?,
      price: json['price'] as int?,
      productId: json['product_id'] as int?,
      productName: json['product_name'] as String?,
      qty: json['qty'] as int?,
    );

Map<String, dynamic> _$ItemToJson(Item instance) => <String, dynamic>{
      'brand': instance.brand,
      'cart_id': instance.cartId,
      'images': instance.images,
      'price': instance.price,
      'product_id': instance.productId,
      'product_name': instance.productName,
      'qty': instance.qty,
    };
