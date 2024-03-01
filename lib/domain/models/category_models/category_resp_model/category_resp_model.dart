import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device/domain/models/category_models/category_model/category_model.dart';
part 'category_resp_model.g.dart';

@JsonSerializable()
class CategoryRespModel {
  @JsonKey(name: 'status-code')
  int? statusCode;
  List<CategoryModel>? data;
  String? message;
  dynamic error;
  CategoryRespModel({
    this.statusCode,
    this.data,
    this.message,
    required this.error,
  });

  factory CategoryRespModel.fromJson(Map<String, dynamic> json) {
    return _$CategoryRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$CategoryRespModelToJson(this);
}
