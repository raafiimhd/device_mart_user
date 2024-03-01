import 'package:json_annotation/json_annotation.dart';

part 'sign_in_model.g.dart';

@JsonSerializable()
class SignInModel {
  int phone;
  String password;

  SignInModel({required this.phone, required this.password});

  factory SignInModel.fromJson(Map<String, dynamic> json) {
    return _$SignInModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignInModelToJson(this);
}
