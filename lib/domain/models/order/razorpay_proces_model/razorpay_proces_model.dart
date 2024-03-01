import 'package:json_annotation/json_annotation.dart';

part 'razorpay_proces_model.g.dart';

@JsonSerializable()
class RazorpayProcesModel {
  @JsonKey(name: 'razorpay_order_id')
  String? razorpayOrderId;
  @JsonKey(name: 'razorpay_payment_id')
  String? razorpayPaymentId;
  @JsonKey(name: 'razorpay_signature')
  String? razorpaySignature;

  RazorpayProcesModel({
    this.razorpayOrderId,
    this.razorpayPaymentId,
    this.razorpaySignature,
  });

  factory RazorpayProcesModel.fromJson(Map<String, dynamic> json) {
    return _$RazorpayProcesModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RazorpayProcesModelToJson(this);
}
