import 'package:device/domain/models/order/checkout_model/data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'checkout_model.g.dart';

@JsonSerializable()
class CheckoutModel {
  Data? data;
  String? error;
  String? message;
  @JsonKey(name: 'status-code')
  int? statusCode;

  CheckoutModel({this.data, this.error, this.message, this.statusCode});

  factory CheckoutModel.fromJson(Map<String, dynamic> json) {
    return _$CheckoutModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CheckoutModelToJson(this);
}
