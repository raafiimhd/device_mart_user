// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryRespModel _$InventoryRespModelFromJson(Map<String, dynamic> json) =>
    InventoryRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InventoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'],
    );

Map<String, dynamic> _$InventoryRespModelToJson(InventoryRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
