import 'package:freezed_annotation/freezed_annotation.dart';
part 'remove_wishlist_qurrey.g.dart';

@JsonSerializable()
class RemoveWishlistQurrey {
  @JsonKey(name: 'productID')
  int? id;
  RemoveWishlistQurrey({
    this.id,
  });

  factory RemoveWishlistQurrey.fromJson(Map<String, dynamic> json) =>
      _$RemoveWishlistQurreyFromJson(json);
  Map<String, dynamic> toJson() => _$RemoveWishlistQurreyToJson(this);
}
