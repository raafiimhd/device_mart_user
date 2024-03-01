// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_rep_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletRespModel _$WalletRespModelFromJson(Map<String, dynamic> json) =>
    WalletRespModel(
      statusCode: json['statusCode'] as int?,
      data: json['data'],
      error: json['error'],
      message: json['message'] as String?,
    );

Map<String, dynamic> _$WalletRespModelToJson(WalletRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
    };
