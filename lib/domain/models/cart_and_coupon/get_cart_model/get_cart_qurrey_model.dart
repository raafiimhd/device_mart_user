import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_cart_qurrey_model.g.dart';

@JsonSerializable()
class GetCartQurreyModel {
  int? page;
  int? count;
  GetCartQurreyModel({
    this.page,
    this.count,
  });
  factory GetCartQurreyModel.fromJson(Map<String, dynamic> json) =>
      _$GetCartQurreyModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetCartQurreyModelToJson(this);
}
