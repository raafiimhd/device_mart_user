import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_address_model.g.dart';

@JsonSerializable()
class DeleteAddressModel {
  @JsonKey(name: 'addressID')
  int? id;
  DeleteAddressModel({
    this.id,
  });

  factory DeleteAddressModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteAddressModelFromJson(json);
  Map<String, dynamic> toJson() => _$DeleteAddressModelToJson(this);
}
