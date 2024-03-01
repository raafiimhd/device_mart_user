import 'package:device/domain/models/auth_models/otp_data_model/otp_data_model.dart';
import 'package:json_annotation/json_annotation.dart';

part 'otp_response_model.g.dart';

@JsonSerializable()
class OtpResponseModel {
  @JsonKey(name: 'status-code')
  int? statusCode;

  @JsonKey(name: 'message')
  String? message;

  @JsonKey(name: 'data')
  OtpDataModel? data;

  @JsonKey(name: 'error')
  String? error;

  @JsonKey(name: 'uuid')
  String uuid;

  OtpResponseModel(
      {required this.statusCode,
      required this.message,
      required this.data,
      required this.error,
      required this.uuid});

  factory OtpResponseModel.fromJson(Map<String, dynamic> json) {
    return _$OtpResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpResponseModelToJson(this);
}
