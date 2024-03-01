import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_password_model.g.dart';

@JsonSerializable()
class VerifyPasswordModel {
  @JsonKey(name: 'old_password')
  String? oldPassword;
  VerifyPasswordModel({
    this.oldPassword,
  });

  factory VerifyPasswordModel.fromJson(Map<String, dynamic> json) {
    return _$VerifyPasswordModelFromJson(json);
  }
  Map<String, dynamic> toJson() => _$VerifyPasswordModelToJson(this);
}
