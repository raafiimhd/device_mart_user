// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_cart_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RemoveCartRespModel _$RemoveCartRespModelFromJson(Map<String, dynamic> json) =>
    RemoveCartRespModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'],
      data: json['data'],
    );

Map<String, dynamic> _$RemoveCartRespModelToJson(
        RemoveCartRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
