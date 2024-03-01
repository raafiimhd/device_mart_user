import 'package:freezed_annotation/freezed_annotation.dart';

part 'get_items_model.g.dart';

@JsonSerializable()
class Items {
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
  Items(
      {this.brand,
      this.cartId,
      this.price,
      this.productId,
      this.productName,
      this.images,
      this.qty});

  factory Items.fromJson(Map<String, dynamic> json) => _$ItemsFromJson(json);
  Map<String, dynamic> toJson() => _$ItemsToJson(this);
}
