import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_string_model.g.dart';

@JsonSerializable()
class SearchStringModel {
  String? search;
  SearchStringModel({
    this.search,
  });

  factory SearchStringModel.fromJson(Map<String, dynamic> json) =>
      _$SearchStringModelFromJson(json);
  Map<String, dynamic> toJson() => _$SearchStringModelToJson(this);
}
