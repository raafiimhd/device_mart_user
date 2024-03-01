import 'package:device/domain/models/cart_and_coupon/get_cart_model/get_items_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_cart_model.g.dart';

@JsonSerializable()
class CartModel {
  List<Items>? items;
  int? total;
  int? discount;

  CartModel({
    this.items,
    this.discount,
    this.total,
  });

  factory CartModel.fromJson(Map<String, dynamic> json) =>
      _$CartModelFromJson(json);
  Map<String, dynamic> toJson() => _$CartModelToJson(this);
}
