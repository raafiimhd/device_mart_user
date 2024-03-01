// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_address_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddAddressRespModel _$AddAddressRespModelFromJson(Map<String, dynamic> json) =>
    AddAddressRespModel(
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$AddAddressRespModelToJson(
        AddAddressRespModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
      'statusCode': instance.statusCode,
    };
