import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_request_model.g.dart';

@JsonSerializable()
class VerifyOtpRequestModel {
  @JsonKey(name: 'otp')
  String? otp;

  @JsonKey(name: 'uuid')
  String? uuid;

  VerifyOtpRequestModel({required this.otp, required this.uuid});

  factory VerifyOtpRequestModel.fromJson(Map<String, dynamic> json) {
    return _$VerifyOtpRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyOtpRequestModelToJson(this);
}
