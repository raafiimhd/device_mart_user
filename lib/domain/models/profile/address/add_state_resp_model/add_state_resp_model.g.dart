// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_state_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddStateRespModel _$AddStateRespModelFromJson(Map<String, dynamic> json) =>
    AddStateRespModel(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => Datum.fromJson(e as Map<String, dynamic>))
          .toList(),
      error: json['error'],
    );

Map<String, dynamic> _$AddStateRespModelToJson(AddStateRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'status-code': instance.statusCode,
      'message': instance.message,
      'error': instance.error,
    };
