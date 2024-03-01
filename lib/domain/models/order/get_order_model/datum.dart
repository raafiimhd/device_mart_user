import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  @JsonKey(name: 'delivery_address')
  String? deliveryAddress;
  @JsonKey(name: 'order_id')
  int? orderId;
  @JsonKey(name: 'order_status')
  String? orderStatus;
  @JsonKey(name: 'payment_method')
  String? paymentMethod;
  @JsonKey(name: 'product_id')
  int? productId;
  Map<String, dynamic>? images;
  @JsonKey(name: 'product_name')
  String? productName;
  @JsonKey(name: 'product_price')
  int? productPrice;

  Datum({
    this.deliveryAddress,
    this.orderId,
    this.orderStatus,
    this.paymentMethod,
    this.productId,
    this.images,
    this.productName,
    this.productPrice,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
