import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_response_model.g.dart';

@JsonSerializable()
class VerifyOtpResponseModel {
  @JsonKey(name: 'status-code')
  int? statusCode;

  String? message;
  String? uuid;

  Map<String, dynamic>? data;

  dynamic error;

  VerifyOtpResponseModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
    this.uuid,
  });

  factory VerifyOtpResponseModel.fromJson(Map<String, dynamic> json) {
    return _$VerifyOtpResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyOtpResponseModelToJson(this);
}
