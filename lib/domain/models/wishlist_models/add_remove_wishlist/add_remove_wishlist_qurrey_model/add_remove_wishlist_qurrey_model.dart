import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_remove_wishlist_qurrey_model.g.dart';

@JsonSerializable()
class AddRemoveWishlistQurreyModel {
  @JsonKey(name: 'productID')
  int? id;
  AddRemoveWishlistQurreyModel({
    this.id,
  });

  factory AddRemoveWishlistQurreyModel.fromJson(Map<String, dynamic> json) =>
      _$AddRemoveWishlistQurreyModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddRemoveWishlistQurreyModelToJson(this);
}
