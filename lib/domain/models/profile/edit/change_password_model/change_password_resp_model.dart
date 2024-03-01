import 'package:freezed_annotation/freezed_annotation.dart';
part 'change_password_resp_model.g.dart';

@JsonSerializable()
class ChangePasswordRespModel {
  dynamic data;
  dynamic error;
  int? statusCode;
  String? message;
  ChangePasswordRespModel({
    required this.data,
    required this.error,
    this.statusCode,
    this.message,
  });

  factory ChangePasswordRespModel.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordRespModelFromJson(json);
  Map<String, dynamic> toJson() => _$ChangePasswordRespModelToJson(this);
}
