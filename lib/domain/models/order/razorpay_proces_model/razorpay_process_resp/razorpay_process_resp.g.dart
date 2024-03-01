// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'razorpay_process_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RazorpayProcessResp _$RazorpayProcessRespFromJson(Map<String, dynamic> json) =>
    RazorpayProcessResp(
      statusCode: json['status-code'] as int?,
      message: json['message'] as String?,
      data: json['data'],
      error: json['error'],
    );

Map<String, dynamic> _$RazorpayProcessRespToJson(
        RazorpayProcessResp instance) =>
    <String, dynamic>{
      'status-code': instance.statusCode,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
