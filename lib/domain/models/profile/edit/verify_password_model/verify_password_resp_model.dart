import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device/domain/models/profile/edit/verify_password_model/data.dart';

part 'verify_password_resp_model.g.dart';

@JsonSerializable()
class VerifyPasswordRespModel {
  Data? data;
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  String? error;
  VerifyPasswordRespModel({
    this.data,
    this.statusCode,
    this.message,
    this.error,
  });

  factory VerifyPasswordRespModel.fromJson(Map<String, dynamic> json) =>
      _$VerifyPasswordRespModelFromJson(json);

  Map<String, dynamic> toJson() => _$VerifyPasswordRespModelToJson(this);
}
