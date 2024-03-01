import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_cart_qurrey_model.g.dart';

@JsonSerializable()
class AddCartQurreyModel {
  @JsonKey(name: 'productID')
  final int id;
  AddCartQurreyModel({
    required this.id,
  });

  factory AddCartQurreyModel.fromJson(Map<String, dynamic> json) =>
      _$AddCartQurreyModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddCartQurreyModelToJson(this);
}
