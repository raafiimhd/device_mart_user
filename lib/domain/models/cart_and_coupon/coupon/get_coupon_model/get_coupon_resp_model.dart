import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device/domain/models/cart_and_coupon/coupon/get_coupon_model/get_coupon_model.dart';
part 'get_coupon_resp_model.g.dart';

@JsonSerializable()
class GetCouponRespModel {
  List<GetCouponModel>? data;
  int? statusCode;
  dynamic error;
  String? message;
  GetCouponRespModel({
    this.data,
    this.statusCode,
    this.error,
    this.message,
  });

  factory GetCouponRespModel.fromJson(Map<String, dynamic> json) =>
      _$GetCouponRespModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetCouponRespModelToJson(this);
}
