import 'package:json_annotation/json_annotation.dart';

part 'sign_up_response_model.g.dart';

@JsonSerializable()
class SignUpRespModel {
  @JsonKey(name: 'status-code')
  int? statusCode;
  @JsonKey(name: 'message')
  String? message;
  @JsonKey(name: 'data')
  Map<String, dynamic>? data;
  @JsonKey(name: 'error')
  String? error;

  SignUpRespModel({this.message, this.data, this.statusCode, this.error});

  factory SignUpRespModel.fromJson(Map<String, dynamic> json) {
    return _$SignUpRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SignUpRespModelToJson(this);
}
