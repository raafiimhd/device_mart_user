// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'datum.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Datum _$DatumFromJson(Map<String, dynamic> json) => Datum(
      id: json['id'] as int?,
      transactionTime: json['transaction_time'] == null
          ? null
          : DateTime.parse(json['transaction_time'] as String),
      userId: json['user_id'] as int?,
      amount: json['amount'] as int?,
      transactionType: json['transaction_type'] as String?,
    );

Map<String, dynamic> _$DatumToJson(Datum instance) => <String, dynamic>{
      'id': instance.id,
      'transaction_time': instance.transactionTime?.toIso8601String(),
      'user_id': instance.userId,
      'amount': instance.amount,
      'transaction_type': instance.transactionType,
    };
