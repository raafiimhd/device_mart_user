// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'razorpay_proces_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RazorpayProcesModel _$RazorpayProcesModelFromJson(Map<String, dynamic> json) =>
    RazorpayProcesModel(
      razorpayOrderId: json['razorpay_order_id'] as String?,
      razorpayPaymentId: json['razorpay_payment_id'] as String?,
      razorpaySignature: json['razorpay_signature'] as String?,
    );

Map<String, dynamic> _$RazorpayProcesModelToJson(
        RazorpayProcesModel instance) =>
    <String, dynamic>{
      'razorpay_order_id': instance.razorpayOrderId,
      'razorpay_payment_id': instance.razorpayPaymentId,
      'razorpay_signature': instance.razorpaySignature,
    };
