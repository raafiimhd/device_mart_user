import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_remove_wishlist_resp.g.dart';

@JsonSerializable()
class AddRemoveWishlistResp {
  int? statusCode;
  dynamic error;
  dynamic data;
  String? message;
  AddRemoveWishlistResp({
    this.statusCode,
    required this.error,
    required this.data,
    this.message,
  });

  factory AddRemoveWishlistResp.fromJson(Map<String, dynamic> json) =>
      _$AddRemoveWishlistRespFromJson(json);

  Map<String, dynamic> toJson() => _$AddRemoveWishlistRespToJson(this);
}
