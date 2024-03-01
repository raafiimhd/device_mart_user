import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_model.g.dart';

@JsonSerializable()
class CategoryModel {
  @JsonKey(name: 'category_name')
  String? categoryName;
  int? id;
  Map<String, dynamic>? images;
  CategoryModel({
    this.categoryName,
    this.id,
    this.images,
  });

  factory CategoryModel.fromJson(Map<String, dynamic> json) {
    return _$CategoryModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$CategoryModelToJson(this);
}
