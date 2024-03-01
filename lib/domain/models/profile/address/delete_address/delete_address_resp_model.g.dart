// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_address_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DeleteAddressRespModel _$DeleteAddressRespModelFromJson(
        Map<String, dynamic> json) =>
    DeleteAddressRespModel(
      data: json['data'],
      error: json['error'],
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$DeleteAddressRespModelToJson(
        DeleteAddressRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
