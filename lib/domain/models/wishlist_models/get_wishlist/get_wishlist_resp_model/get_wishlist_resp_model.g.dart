// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_wishlist_resp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetWishlistRespModel _$GetWishlistRespModelFromJson(
        Map<String, dynamic> json) =>
    GetWishlistRespModel(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => InventoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      statusCode: json['statusCode'] as int?,
      error: json['error'],
      message: json['message'] as String?,
    );

Map<String, dynamic> _$GetWishlistRespModelToJson(
        GetWishlistRespModel instance) =>
    <String, dynamic>{
      'data': instance.data,
      'statusCode': instance.statusCode,
      'error': instance.error,
      'message': instance.message,
    };
