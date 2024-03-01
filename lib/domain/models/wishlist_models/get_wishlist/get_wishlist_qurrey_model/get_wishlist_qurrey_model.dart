import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_wishlist_qurrey_model.g.dart';

@JsonSerializable()
class GetWishlistQurreyModel {
  int? page;
  int? count;

  GetWishlistQurreyModel({this.count, this.page});

  factory GetWishlistQurreyModel.fromJson(Map<String, dynamic> json) =>
      _$GetWishlistQurreyModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetWishlistQurreyModelToJson(this);
}
