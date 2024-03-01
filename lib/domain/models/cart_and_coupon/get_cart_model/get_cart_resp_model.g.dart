// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetCartRespModel _$GetCartRespModelFromJson(Map<String, dynamic> json) =>
    GetCartRespModel(
      data: json['data'] == null
          ? null
          : CartModel.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'],
    );

Map<String, dynamic> _$GetCartRespModelToJson(GetCartRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
