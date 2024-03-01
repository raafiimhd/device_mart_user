// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CategoryModel _$CategoryModelFromJson(Map<String, dynamic> json) =>
    CategoryModel(
      categoryName: json['category_name'] as String?,
      id: json['id'] as int?,
      images: json['images'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$CategoryModelToJson(CategoryModel instance) =>
    <String, dynamic>{
      'category_name': instance.categoryName,
      'id': instance.id,
      'images': instance.images,
    };
