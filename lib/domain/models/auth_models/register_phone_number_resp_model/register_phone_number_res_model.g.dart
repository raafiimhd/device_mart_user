// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_phone_number_res_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RegisterPhoneNumberResModel _$RegisterPhoneNumberResModelFromJson(
        Map<String, dynamic> json) =>
    RegisterPhoneNumberResModel(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      uuid: json['uuid'] as String?,
      data: json['data'] as Map<String, dynamic>?,
      error: json['error'] as String?,
    );

Map<String, dynamic> _$RegisterPhoneNumberResModelToJson(
        RegisterPhoneNumberResModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'uuid': instance.uuid,
      'data': instance.data,
      'error': instance.error,
    };
