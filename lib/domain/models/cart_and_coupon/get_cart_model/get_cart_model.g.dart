// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CartModel _$CartModelFromJson(Map<String, dynamic> json) => CartModel(
      items: (json['items'] as List<dynamic>?)
          ?.map((e) => Items.fromJson(e as Map<String, dynamic>))
          .toList(),
      discount: json['discount'] as int?,
      total: json['total'] as int?,
    );

Map<String, dynamic> _$CartModelToJson(CartModel instance) => <String, dynamic>{
      'items': instance.items,
      'total': instance.total,
      'discount': instance.discount,
    };
