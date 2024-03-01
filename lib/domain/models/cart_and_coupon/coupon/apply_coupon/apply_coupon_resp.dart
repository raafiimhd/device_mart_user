import 'package:json_annotation/json_annotation.dart';
part 'apply_coupon_resp.g.dart';

@JsonSerializable()
class ApplyCouponRespModel {
  int? statusCode;
  String? message;
  dynamic error;
  dynamic data;
  ApplyCouponRespModel({
    this.statusCode,
    this.message,
    this.error,
    this.data,
  });

  factory ApplyCouponRespModel.fromJson(Map<String, dynamic> json) =>
      _$ApplyCouponRespModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApplyCouponRespModelToJson(this);
}
