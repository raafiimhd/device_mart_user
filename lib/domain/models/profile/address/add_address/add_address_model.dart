import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_address_model.g.dart';

@JsonSerializable()
class AddAddressModel {
  @JsonKey(name: 'address_line')
  String? addressLine;
  @JsonKey(name: 'alternative_phone')
  String? altPhone;
  String? district;
  String? locality;
  String? name;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  String? pincode;
  @JsonKey(name: 'state_id')
  int? id;
  String? landmark;
  AddAddressModel(
      {this.addressLine,
      this.altPhone,
      this.district,
      this.locality,
      this.name,
      this.phoneNumber,
      this.pincode,
      this.id,
      this.landmark});
  factory AddAddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddAddressModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddAddressModelToJson(this);
}
