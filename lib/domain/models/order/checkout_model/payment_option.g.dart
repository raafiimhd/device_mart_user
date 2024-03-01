// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_option.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentOption _$PaymentOptionFromJson(Map<String, dynamic> json) =>
    PaymentOption(
      id: json['id'] as int?,
      method: json['method'] as String?,
    );

Map<String, dynamic> _$PaymentOptionToJson(PaymentOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'method': instance.method,
    };
