// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'select_wallet_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SelectWalletResp _$SelectWalletRespFromJson(Map<String, dynamic> json) =>
    SelectWalletResp(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'] as String?,
    );

Map<String, dynamic> _$SelectWalletRespToJson(SelectWalletResp instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
