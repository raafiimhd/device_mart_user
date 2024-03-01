// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inc_and_dec_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

IncrementAndDecrementRespModel _$IncrementAndDecrementRespModelFromJson(
        Map<String, dynamic> json) =>
    IncrementAndDecrementRespModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'],
      data: json['data'],
    );

Map<String, dynamic> _$IncrementAndDecrementRespModelToJson(
        IncrementAndDecrementRespModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
