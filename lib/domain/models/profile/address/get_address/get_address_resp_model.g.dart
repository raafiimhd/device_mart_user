// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_address_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAddressRespModel _$GetAddressRespModelFromJson(Map<String, dynamic> json) =>
    GetAddressRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => GetAddressModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'],
    );

Map<String, dynamic> _$GetAddressRespModelToJson(
        GetAddressRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
