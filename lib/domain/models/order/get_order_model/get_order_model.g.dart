// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_order_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetOrderModel _$GetOrderModelFromJson(Map<String, dynamic> json) =>
    GetOrderModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'] as String?,
      message: json['message'] as String?,
      statusCode: json['status-code'] as int?,
    );

Map<String, dynamic> _$GetOrderModelToJson(GetOrderModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'error': instance.error,
      'message': instance.message,
      'status-code': instance.statusCode,
    };
