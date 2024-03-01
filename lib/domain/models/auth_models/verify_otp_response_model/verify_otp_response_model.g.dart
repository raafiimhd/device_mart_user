// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpResponseModel _$VerifyOtpResponseModelFromJson(
        Map<String, dynamic> json) =>
    VerifyOtpResponseModel(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      error: json['error'],
      uuid: json['uuid'] as String?,
    );

Map<String, dynamic> _$VerifyOtpResponseModelToJson(
        VerifyOtpResponseModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'uuid': instance.uuid,
      'data': instance.data,
      'error': instance.error,
    };
