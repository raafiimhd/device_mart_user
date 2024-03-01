import 'package:json_annotation/json_annotation.dart';

import 'address.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  List<Address>? addresses;
  String? email;
  int? phone;
  @JsonKey(name: 'user_id')
  int? userId;
  String? username;

  Data({
    this.addresses,
    this.email,
    this.phone,
    this.userId,
    this.username,
  });

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
