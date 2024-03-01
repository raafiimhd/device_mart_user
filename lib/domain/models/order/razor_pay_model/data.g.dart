// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      username: json['username'] as String?,
      razorpayOrderId: json['razorpay_order_id'] as String?,
      amount: json['amount'] as int?,
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'username': instance.username,
      'razorpay_order_id': instance.razorpayOrderId,
      'amount': instance.amount,
    };
