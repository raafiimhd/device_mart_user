import 'package:freezed_annotation/freezed_annotation.dart';
part 'remove_cart_model.g.dart';

@JsonSerializable()
class RemoveCartModel {
  @JsonKey(name: 'productID')
  int? id;
  RemoveCartModel({
    this.id,
  });

  factory RemoveCartModel.fromJson(Map<String, dynamic> json) =>
      _$RemoveCartModelFromJson(json);

  Map<String, dynamic> toJson() => _$RemoveCartModelToJson(this);
}
