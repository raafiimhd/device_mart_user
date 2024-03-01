// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryRespModel _$CategoryRespModelFromJson(Map<String, dynamic> json) =>
    CategoryRespModel(
      statusCode: json['status-code'] as int?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => CategoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      error: json['error'],
    );

Map<String, dynamic> _$CategoryRespModelToJson(CategoryRespModel instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'data': instance.data,
      'message': instance.message,
      'error': instance.error,
    };
