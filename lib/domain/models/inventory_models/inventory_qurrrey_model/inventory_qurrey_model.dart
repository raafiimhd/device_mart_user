import 'package:freezed_annotation/freezed_annotation.dart';
part 'inventory_qurrey_model.g.dart';

@JsonSerializable()
class InventoryQurreyModel {
  int? page;
  int? count;
  InventoryQurreyModel({
    this.page,
    this.count,
  });

  factory InventoryQurreyModel.fromJson(Map<String, dynamic> json) =>
      _$InventoryQurreyModelFromJson(json);
  Map<String, dynamic> toJson() => _$InventoryQurreyModelToJson(this);
}
