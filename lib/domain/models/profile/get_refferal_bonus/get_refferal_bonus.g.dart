// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_refferal_bonus.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRefferalBonus _$GetRefferalBonusFromJson(Map<String, dynamic> json) =>
    GetRefferalBonus(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$GetRefferalBonusToJson(GetRefferalBonus instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
