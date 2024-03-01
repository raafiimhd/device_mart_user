// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_rating_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetRatingModel _$GetRatingModelFromJson(Map<String, dynamic> json) =>
    GetRatingModel(
      statusCode: json['statusCode'] as int?,
      message: json['message'] as String?,
      error: json['error'],
      data: json['data'],
    );

Map<String, dynamic> _$GetRatingModelToJson(GetRatingModel instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
      'data': instance.data,
    };
