import 'package:freezed_annotation/freezed_annotation.dart';
part 'category_qurrey_model.g.dart';

@JsonSerializable()
class CategoryQurreyModel {
  final int page;
  final int count;
  CategoryQurreyModel({
    required this.page,
    required this.count,
  });
  factory CategoryQurreyModel.fromJson(Map<String, dynamic> json) {
    return _$CategoryQurreyModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$CategoryQurreyModelToJson(this);
}
