// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_coupon_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCouponModel _$GetCouponModelFromJson(Map<String, dynamic> json) =>
    GetCouponModel(
      code: json['code'] as String?,
      discountMaxAmount: json['discount_max_amount'] as int?,
      discountPer: json['discount_percentage'] as int?,
      id: json['id'] as int?,
      isBlocked: json['isBlocked'] as bool?,
      minOrderValue: json['min_order_value'] as int?,
      name: json['coupon_name'] as String?,
      validForm: json['valid_from'] as String?,
      validTill: json['valid_till'] as String?,
    );

Map<String, dynamic> _$GetCouponModelToJson(GetCouponModel instance) =>
    <String, dynamic>{
      'coupon_name': instance.name,
      'code': instance.code,
      'id': instance.id,
      'min_order_value': instance.minOrderValue,
      'discount_percentage': instance.discountPer,
      'discount_max_amount': instance.discountMaxAmount,
      'valid_from': instance.validForm,
      'valid_till': instance.validTill,
      'isBlocked': instance.isBlocked,
    };
