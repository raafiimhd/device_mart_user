// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_qurrey_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchQurreyModel _$SearchQurreyModelFromJson(Map<String, dynamic> json) =>
    SearchQurreyModel(
      search: json['search'] as String,
      page: json['page'] as int,
      count: json['count'] as int,
    );

Map<String, dynamic> _$SearchQurreyModelToJson(SearchQurreyModel instance) =>
    <String, dynamic>{
      'search': instance.search,
      'page': instance.page,
      'count': instance.count,
    };
