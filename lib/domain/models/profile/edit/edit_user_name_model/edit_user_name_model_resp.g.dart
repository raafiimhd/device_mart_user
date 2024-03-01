// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_user_name_model_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EditUserNameRespModel _$EditUserNameRespModelFromJson(
        Map<String, dynamic> json) =>
    EditUserNameRespModel(
      data: json['data'],
      error: json['error'] as String?,
      message: json['message'] as String?,
      statusCode: json['status-code'] as int?,
    );

Map<String, dynamic> _$EditUserNameRespModelToJson(
        EditUserNameRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
      'status-code': instance.statusCode,
    };
