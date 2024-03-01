// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_remove_wishlist_resp.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddRemoveWishlistResp _$AddRemoveWishlistRespFromJson(
        Map<String, dynamic> json) =>
    AddRemoveWishlistResp(
      statusCode: json['statusCode'] as int?,
      error: json['error'],
      data: json['data'],
      message: json['message'] as String?,
    );

Map<String, dynamic> _$AddRemoveWishlistRespToJson(
        AddRemoveWishlistResp instance) =>
    <String, dynamic>{
      'statusCode': instance.statusCode,
      'error': instance.error,
      'data': instance.data,
      'message': instance.message,
    };
