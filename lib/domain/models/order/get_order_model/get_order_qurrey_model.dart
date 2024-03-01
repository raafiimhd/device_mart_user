import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_order_qurrey_model.g.dart';

@JsonSerializable()
class GetOrderQurreyModel {
  int? page;
  int? count;
  GetOrderQurreyModel({
    this.page,
    this.count,
  });

  factory GetOrderQurreyModel.fromJson(Map<String, dynamic> json) =>
      _$GetOrderQurreyModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetOrderQurreyModelToJson(this);
}
