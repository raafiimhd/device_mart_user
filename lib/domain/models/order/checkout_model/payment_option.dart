import 'package:json_annotation/json_annotation.dart';

part 'payment_option.g.dart';

@JsonSerializable()
class PaymentOption {
  int? id;
  String? method;

  PaymentOption({this.id, this.method});

  factory PaymentOption.fromJson(Map<String, dynamic> json) {
    return _$PaymentOptionFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PaymentOptionToJson(this);
}
