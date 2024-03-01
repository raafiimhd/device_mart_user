// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet_history.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WalletHistory _$WalletHistoryFromJson(Map<String, dynamic> json) =>
    WalletHistory(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$WalletHistoryToJson(WalletHistory instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
