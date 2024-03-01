import 'package:device/domain/models/inventory_models/inventory_model/inventory_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_wishlist_resp_model.g.dart';

@JsonSerializable()
class GetWishlistRespModel {
  List<InventoryModel>? data;
  int? statusCode;
  dynamic error;
  String? message;
  GetWishlistRespModel({
    this.data,
    this.statusCode,
    this.error,
    this.message,
  });

  factory GetWishlistRespModel.fromJson(Map<String, dynamic> json) =>
      _$GetWishlistRespModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetWishlistRespModelToJson(this);
}
