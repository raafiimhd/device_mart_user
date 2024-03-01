import 'package:device/domain/models/inventory_models/inventory_resp_model/inventory_resp_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_product_resp_model.g.dart';

@JsonSerializable()
class CategoryProductRespModel {
  List<InventoryRespModel>? data;
  int? statusCode;
  String? message;
  dynamic error;
  CategoryProductRespModel({
    this.data,
    this.statusCode,
    this.message,
    required this.error,
  });

  factory CategoryProductRespModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryProductRespModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryProductRespModelToJson(this);
}
