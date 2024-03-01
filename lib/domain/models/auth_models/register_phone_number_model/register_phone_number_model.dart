import 'package:json_annotation/json_annotation.dart';

part 'register_phone_number_model.g.dart';

@JsonSerializable()
class RegisterPhoneNumberModel {
  final int phone;

  RegisterPhoneNumberModel({required this.phone});

  factory RegisterPhoneNumberModel.fromJson(Map<String, dynamic> json) =>
      _$RegisterPhoneNumberModelFromJson(json);

  Map<String, dynamic> toJson() => _$RegisterPhoneNumberModelToJson(this);
}
