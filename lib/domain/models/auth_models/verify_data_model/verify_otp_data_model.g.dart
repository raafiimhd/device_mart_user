// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_otp_data_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerifyOtpDataModel _$VerifyOtpDataModelFromJson(Map<String, dynamic> json) =>
    VerifyOtpDataModel(
      uuid: json['uuid'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$VerifyOtpDataModelToJson(VerifyOtpDataModel instance) =>
    <String, dynamic>{
      'otp': instance.otp,
      'uuid': instance.uuid,
    };
