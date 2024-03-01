// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_cart_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCartRespModel _$AddCartRespModelFromJson(Map<String, dynamic> json) =>
    AddCartRespModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$AddCartRespModelToJson(AddCartRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
