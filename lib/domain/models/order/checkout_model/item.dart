import 'package:json_annotation/json_annotation.dart';

part 'item.g.dart';

@JsonSerializable()
class Item {
  String? brand;
  @JsonKey(name: 'cart_id')
  int? cartId;
  Map<String, dynamic>? images;
  int? price;
  @JsonKey(name: 'product_id')
  int? productId;
  @JsonKey(name: 'product_name')
  String? productName;
  int? qty;

  Item({
    this.brand,
    this.cartId,
    this.images,
    this.price,
    this.productId,
    this.productName,
    this.qty,
  });

  factory Item.fromJson(Map<String, dynamic> json) => _$ItemFromJson(json);

  Map<String, dynamic> toJson() => _$ItemToJson(this);
}
