import 'package:device/domain/models/order/checkout_model/delivery_address.dart';
import 'package:device/domain/models/order/checkout_model/item.dart';
import 'package:device/domain/models/order/checkout_model/payment_option.dart';
import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  @JsonKey(name: 'delivery_address')
  List<DeliveryAddress>? deliveryAddress;
  int? discount;
  List<Item>? items;
  @JsonKey(name: 'payment_options')
  List<PaymentOption>? paymentOptions;
  int? total;

  Data({
    this.deliveryAddress,
    this.discount,
    this.items,
    this.paymentOptions,
    this.total,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
