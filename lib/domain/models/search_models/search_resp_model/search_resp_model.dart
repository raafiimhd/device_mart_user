import 'package:device/domain/models/inventory_models/inventory_model/inventory_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_resp_model.g.dart';

@JsonSerializable()
class SearchRespModel {
  List<InventoryModel>? data;
  String? message;
  dynamic error;
  int? statusCode;
  SearchRespModel({
    this.data,
    this.message,
    required this.error,
    this.statusCode,
  });

  factory SearchRespModel.fromJson(Map<String, dynamic> json) {
    return _$SearchRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$SearchRespModelToJson(this);
}
