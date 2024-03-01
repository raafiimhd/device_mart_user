import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_product_qurrey_model.g.dart';

@JsonSerializable()
class CategoryProductQurreyModel {
  int? page;
  int? count;
  CategoryProductQurreyModel({
    this.page,
    this.count,
  });

  factory CategoryProductQurreyModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryProductQurreyModelFromJson(json);
  Map<String, dynamic> toJson() => _$CategoryProductQurreyModelToJson(this);
}
