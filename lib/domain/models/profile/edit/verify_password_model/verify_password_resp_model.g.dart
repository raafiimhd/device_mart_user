// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_password_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyPasswordRespModel _$VerifyPasswordRespModelFromJson(
        Map<String, dynamic> json) =>
    VerifyPasswordRespModel(
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$VerifyPasswordRespModelToJson(
        VerifyPasswordRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status-code': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
