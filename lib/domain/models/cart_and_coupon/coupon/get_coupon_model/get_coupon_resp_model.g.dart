// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_coupon_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCouponRespModel _$GetCouponRespModelFromJson(Map<String, dynamic> json) =>
    GetCouponRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetCouponModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: json['statusCode'] as int?,
      error: json['error'],
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GetCouponRespModelToJson(GetCouponRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'statusCode': instance.statusCode,
      'error': instance.error,
      'message': instance.message,
    };
