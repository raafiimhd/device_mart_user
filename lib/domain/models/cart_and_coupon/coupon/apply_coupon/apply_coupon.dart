import 'package:json_annotation/json_annotation.dart';

part 'apply_coupon.g.dart';

@JsonSerializable()
class ApplyCouponModel {
  String? code;
  ApplyCouponModel({
    this.code,
  });

  factory ApplyCouponModel.fromJson(Map<String, dynamic> json) =>
      _$ApplyCouponModelFromJson(json);

  Map<String, dynamic> toJson() => _$ApplyCouponModelToJson(this);
}
