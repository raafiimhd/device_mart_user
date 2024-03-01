// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'change_password_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ChangePasswordRespModel _$ChangePasswordRespModelFromJson(
        Map<String, dynamic> json) =>
    ChangePasswordRespModel(
      data: json['data'],
      error: json['error'],
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$ChangePasswordRespModelToJson(
        ChangePasswordRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'statusCode': instance.statusCode,
      'message': instance.message,
    };
