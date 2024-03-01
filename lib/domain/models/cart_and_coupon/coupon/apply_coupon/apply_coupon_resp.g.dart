// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'apply_coupon_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApplyCouponRespModel _$ApplyCouponRespModelFromJson(
        Map<String, dynamic> json) =>
    ApplyCouponRespModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'],
      data: json['data'],
    );

Map<String, dynamic> _$ApplyCouponRespModelToJson(
        ApplyCouponRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
