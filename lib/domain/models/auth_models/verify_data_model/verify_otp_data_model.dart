import 'package:json_annotation/json_annotation.dart';

part 'verify_otp_data_model.g.dart';

@JsonSerializable()
class VerifyOtpDataModel {
  @JsonKey(name: 'otp')
  String? otp;
  @JsonKey(name: 'uuid')
  String? uuid;
  VerifyOtpDataModel({this.uuid, this.otp});

  factory VerifyOtpDataModel.fromJson(Map<String, dynamic> json) {
    return _$VerifyOtpDataModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VerifyOtpDataModelToJson(this);
}
