// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpRequestModel _$VerifyOtpRequestModelFromJson(
        Map<String, dynamic> json) =>
    VerifyOtpRequestModel(
      otp: json['otp'] as String?,
      uuid: json['uuid'] as String?,
    );

Map<String, dynamic> _$VerifyOtpRequestModelToJson(
        VerifyOtpRequestModel instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'uuid': instance.uuid,
    };
