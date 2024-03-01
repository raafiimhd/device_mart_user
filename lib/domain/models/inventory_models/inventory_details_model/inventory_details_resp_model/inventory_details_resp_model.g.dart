// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inventory_details_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InventoryDetailsRespModel _$InventoryDetailsRespModelFromJson(
        Map<String, dynamic> json) =>
    InventoryDetailsRespModel(
      data: json['data'] == null
          ? null
          : InventoryDetailsModel.fromJson(
              json['data'] as Map<String, dynamic>),
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'],
    );

Map<String, dynamic> _$InventoryDetailsRespModelToJson(
        InventoryDetailsRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
