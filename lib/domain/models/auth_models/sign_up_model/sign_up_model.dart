import 'package:json_annotation/json_annotation.dart';

part 'sign_up_model.g.dart';

@JsonSerializable()
class SignUpDataModel {
  @JsonKey(name: 'email')
  final String email;

  @JsonKey(name: 'password')
  final String password;

  @JsonKey(name: 'username')
  final String username;

  @JsonKey(name: 'uuid')
  final String? uuid;

  SignUpDataModel({
    required this.email,
    required this.password,
    required this.username,
    required this.uuid,
  });

  factory SignUpDataModel.fromJson(Map<String, dynamic> json) =>
      _$SignUpDataModelFromJson(json);

  Map<String, dynamic> toJson() => _$SignUpDataModelToJson(this);
}
