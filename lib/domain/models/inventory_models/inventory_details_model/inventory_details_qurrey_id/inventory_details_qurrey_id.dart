import 'package:freezed_annotation/freezed_annotation.dart';
part 'inventory_details_qurrey_id.g.dart';

@JsonSerializable()
class InventoryDetailsQurreyModel {
  @JsonKey(name: 'productID ')
  int? id;
  InventoryDetailsQurreyModel({
    this.id,
  });

  factory InventoryDetailsQurreyModel.fromJson(Map<String, dynamic> json) {
    return _$InventoryDetailsQurreyModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$InventoryDetailsQurreyModelToJson(this);
}
