// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'razor_pay_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RazorPayModel _$RazorPayModelFromJson(Map<String, dynamic> json) =>
    RazorPayModel(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
      error: json['error'],
    );

Map<String, dynamic> _$RazorPayModelToJson(RazorPayModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
