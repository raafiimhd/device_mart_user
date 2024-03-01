import 'package:json_annotation/json_annotation.dart';

part 'address.g.dart';

@JsonSerializable()
class Address {
  @JsonKey(name: 'address_line')
  String? addressLine;
  @JsonKey(name: 'alternative_phone')
  String? alternativePhone;
  String? district;
  int? id;
  @JsonKey(name: 'is_default')
  bool? isDefault;
  String? landmark;
  String? locality;
  String? name;
  @JsonKey(name: 'phone_number')
  String? phoneNumber;
  String? pincode;
  String? state;
  @JsonKey(name: 'state_id')
  int? stateId;
  @JsonKey(name: 'user_id')
  int? userId;

  Address({
    this.addressLine,
    this.alternativePhone,
    this.district,
    this.id,
    this.isDefault,
    this.landmark,
    this.locality,
    this.name,
    this.phoneNumber,
    this.pincode,
    this.state,
    this.stateId,
    this.userId,
  });

  factory Address.fromJson(Map<String, dynamic> json) {
    return _$AddressFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddressToJson(this);
}
