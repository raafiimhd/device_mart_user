import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_phone_number_res_model.g.dart';

@JsonSerializable()
class RegisterPhoneNumberResModel {
  @JsonKey(name: 'status-code')
  final int? statusCode;

  @JsonKey(name: 'message')
  final String? message;

  final String? uuid;

  @JsonKey(name: 'data')
  final Map<String, dynamic>? data;

  @JsonKey(name: 'error')
  final String? error;

  RegisterPhoneNumberResModel({
    this.statusCode,
    this.message,
    this.uuid,
    this.data,
    this.error,
  });

  factory RegisterPhoneNumberResModel.fromJson(Map<String, dynamic> json) {
    return _$RegisterPhoneNumberResModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RegisterPhoneNumberResModelToJson(this);
}
