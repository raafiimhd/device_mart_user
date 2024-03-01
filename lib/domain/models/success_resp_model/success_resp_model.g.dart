// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'success_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SuccessRespModel _$SuccessRespModelFromJson(Map<String, dynamic> json) =>
    SuccessRespModel(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$SuccessRespModelToJson(SuccessRespModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
