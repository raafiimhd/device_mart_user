import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device/domain/models/inventory_models/inventory_model/inventory_model.dart';
part 'inventory_resp_model.g.dart';

@JsonSerializable()
class InventoryRespModel {
  List<InventoryModel>? data;
  int? statusCode;
  String? message;
  dynamic error;
  InventoryRespModel({
    this.data,
    this.statusCode,
    this.message,
    required this.error,
  });

  factory InventoryRespModel.fromJson(Map<String, dynamic> json) {
    return _$InventoryRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$InventoryRespModelToJson(this);
}
