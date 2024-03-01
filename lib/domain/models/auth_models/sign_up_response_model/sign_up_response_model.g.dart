// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpRespModel _$SignUpRespModelFromJson(Map<String, dynamic> json) =>
    SignUpRespModel(
      message: json['message'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      statusCode: json['status-code'] as int?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$SignUpRespModelToJson(SignUpRespModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
