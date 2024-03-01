// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'default_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DefaultRespModel _$DefaultRespModelFromJson(Map<String, dynamic> json) =>
    DefaultRespModel(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$DefaultRespModelToJson(DefaultRespModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
