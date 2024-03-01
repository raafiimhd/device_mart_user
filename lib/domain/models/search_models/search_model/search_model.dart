import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  @JsonKey(name: 'product_name')
  String? productName;
  @JsonKey(name: 'product_description')
  String? productDescp;
  String? brand;
  int? id;
  @JsonKey(name: 'category_id')
  int? categoryId;
  Map<String, dynamic>? images;
  int? price;
  SearchModel({
    this.productName,
    this.productDescp,
    this.brand,
    this.id,
    this.categoryId,
    this.images,
    this.price,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) {
    return _$SearchModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}
