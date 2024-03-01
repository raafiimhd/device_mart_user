import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_qurrey_model.g.dart';

@JsonSerializable()
class SearchQurreyModel {
  final String search;
  final int page;
  final int count;
  SearchQurreyModel({
    required this.search,
    required this.page,
    required this.count,
  });

  factory SearchQurreyModel.fromJson(Map<String, dynamic> json) {
    return _$SearchQurreyModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$SearchQurreyModelToJson(this);
}
