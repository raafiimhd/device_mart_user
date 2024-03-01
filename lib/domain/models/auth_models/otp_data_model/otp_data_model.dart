import 'package:json_annotation/json_annotation.dart';

part 'otp_data_model.g.dart';

@JsonSerializable()
class OtpDataModel {
  final String? uuid;
  final String? otp;

  OtpDataModel({required this.uuid, required this.otp});

  factory OtpDataModel.fromJson(Map<String, dynamic> json) {
    return _$OtpDataModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OtpDataModelToJson(this);
}
