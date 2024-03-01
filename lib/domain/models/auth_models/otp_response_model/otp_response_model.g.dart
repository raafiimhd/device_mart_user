// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OtpResponseModel _$OtpResponseModelFromJson(Map<String, dynamic> json) =>
    OtpResponseModel(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : OtpDataModel.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'] as String?,
      uuid: json['uuid'] as String,
    );

Map<String, dynamic> _$OtpResponseModelToJson(OtpResponseModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
      'uuid': instance.uuid,
    };
