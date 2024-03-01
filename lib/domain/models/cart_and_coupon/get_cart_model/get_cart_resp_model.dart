import 'package:device/domain/models/cart_and_coupon/get_cart_model/get_cart_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_cart_resp_model.g.dart';

@JsonSerializable()
class GetCartRespModel {
  CartModel? data;
  int? statusCode;
  String? message;
  dynamic error;
  GetCartRespModel({
    this.data,
    this.statusCode,
    this.message,
    required this.error,
  });

  factory GetCartRespModel.fromJson(Map<String, dynamic> json) =>
      _$GetCartRespModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetCartRespModelToJson(this);
}
