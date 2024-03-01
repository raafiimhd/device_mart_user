import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_address_model.g.dart';

@JsonSerializable()
class GetAddressModel {
  String? name;
  int? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  String? pincode;
  String? locality;
  @JsonKey(name: 'address_line')
  String? addressLine;
  String? district;
  @JsonKey(name: 'state_id')
  int? stateId;
  String? state;
  String? landmark;
  @JsonKey(name: 'alternative_phone')
  String? altPhoneNumber;
  @JsonKey(name: 'is_default')
  bool? isDefault;
  GetAddressModel(
      {this.name,
      this.userId,
      this.addressLine,
      this.altPhoneNumber,
      this.district,
      this.id,
      this.isDefault,
      this.landmark,
      this.locality,
      this.phoneNumber,
      this.pincode,
      this.state,
      this.stateId});

  factory GetAddressModel.fromJson(Map<String, dynamic> json) =>
      _$GetAddressModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetAddressModelToJson(this);
}
