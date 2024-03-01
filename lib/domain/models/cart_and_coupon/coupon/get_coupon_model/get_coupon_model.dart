import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_coupon_model.g.dart';

@JsonSerializable()
class GetCouponModel {
  @JsonKey(name: 'coupon_name')
  String? name;
  String? code;
  int? id;
  @JsonKey(name: 'min_order_value')
  int? minOrderValue;
  @JsonKey(name: 'discount_percentage')
  int? discountPer;
  @JsonKey(name: 'discount_max_amount')
  int? discountMaxAmount;
  @JsonKey(name: 'valid_from')
  String? validForm;
  @JsonKey(name: 'valid_till')
  String? validTill;
  bool? isBlocked;

  GetCouponModel(
      {this.code,
      this.discountMaxAmount,
      this.discountPer,
      this.id,
      this.isBlocked,
      this.minOrderValue,
      this.name,
      this.validForm,
      this.validTill});

  factory GetCouponModel.fromJson(Map<String, dynamic> json) =>
      _$GetCouponModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetCouponModelToJson(this);
}
