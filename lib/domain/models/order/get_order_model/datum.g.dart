// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      deliveryAddress: json['delivery_address'] as String?,
      orderId: json['order_id'] as int?,
      orderStatus: json['order_status'] as String?,
      paymentMethod: json['payment_method'] as String?,
      productId: json['product_id'] as int?,
      images: json['images'] as Map<String, dynamic>?,
      productName: json['product_name'] as String?,
      productPrice: json['product_price'] as int?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'delivery_address': instance.deliveryAddress,
      'order_id': instance.orderId,
      'order_status': instance.orderStatus,
      'payment_method': instance.paymentMethod,
      'product_id': instance.productId,
      'images': instance.images,
      'product_name': instance.productName,
      'product_price': instance.productPrice,
    };
