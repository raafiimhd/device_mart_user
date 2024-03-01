import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device/domain/models/inventory_models/inventory_details_model/inventory_details_model.dart';
part 'inventory_details_resp_model.g.dart';

@JsonSerializable()
class InventoryDetailsRespModel {
  InventoryDetailsModel? data;
  int? statusCode;
  String? message;
  dynamic error;
  InventoryDetailsRespModel({
    this.data,
    this.statusCode,
    this.message,
    required this.error,
  });

  factory InventoryDetailsRespModel.fromJson(Map<String, dynamic> json) {
    return _$InventoryDetailsRespModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$InventoryDetailsRespModelToJson(this);
}
