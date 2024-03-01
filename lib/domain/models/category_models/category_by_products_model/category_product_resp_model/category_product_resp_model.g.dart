// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_product_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryProductRespModel _$CategoryProductRespModelFromJson(
        Map<String, dynamic> json) =>
    CategoryProductRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InventoryRespModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'],
    );

Map<String, dynamic> _$CategoryProductRespModelToJson(
        CategoryProductRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
