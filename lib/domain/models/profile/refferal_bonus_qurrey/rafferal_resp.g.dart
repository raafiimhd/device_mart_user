// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rafferal_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RefferalResp _$RefferalRespFromJson(Map<String, dynamic> json) => RefferalResp(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$RefferalRespToJson(RefferalResp instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
