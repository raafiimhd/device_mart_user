import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_password_model.g.dart';

@JsonSerializable()
class ChangePasswordModel {
  @JsonKey(name: 'new_password')
  String? newPassword;
  @JsonKey(name: 're_new_password')
  String? reNewPassword;
  String? uuid;
  ChangePasswordModel({
    this.newPassword,
    this.reNewPassword,
    this.uuid,
  });

  factory ChangePasswordModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChangePasswordModelToJson(this);
}
