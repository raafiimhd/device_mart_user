import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  String? username;
  @JsonKey(name: 'razorpay_order_id')
  String? razorpayOrderId;
  int? amount;

  Data({this.username, this.razorpayOrderId, this.amount});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
