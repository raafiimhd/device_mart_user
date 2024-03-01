// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchRespModel _$SearchRespModelFromJson(Map<String, dynamic> json) =>
    SearchRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InventoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      message: json['message'] as String?,
      error: json['error'],
      statusCode: json['statusCode'] as int?,
    );

Map<String, dynamic> _$SearchRespModelToJson(SearchRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'message': instance.message,
      'error': instance.error,
      'statusCode': instance.statusCode,
    };
