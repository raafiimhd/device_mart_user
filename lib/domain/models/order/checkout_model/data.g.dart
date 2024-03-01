// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      deliveryAddress: (json['delivery_address'] as List<dynamic>?)
          ?.map((e) => DeliveryAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      discount: json['discount'] as int?,
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Item.fromJson(e as Map<String, dynamic>))
          .toList(),
      paymentOptions: (json['payment_options'] as List<dynamic>?)
          ?.map((e) => PaymentOption.fromJson(e as Map<String, dynamic>))
          .toList(),
      total: json['total'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'delivery_address': instance.deliveryAddress,
      'discount': instance.discount,
      'items': instance.items,
      'payment_options': instance.paymentOptions,
      'total': instance.total,
    };
