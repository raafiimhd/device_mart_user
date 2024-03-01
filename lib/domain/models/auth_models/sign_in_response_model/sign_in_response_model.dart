import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_response_model.g.dart';

@JsonSerializable()
class SignInResponseModel {
  int? status;
  String? message;
  List<dynamic>? error;
  List<dynamic>? data;

  SignInResponseModel({this.status, this.message, this.error, this.data});
  factory SignInResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SignInResponseModelFromJson(json);
  }

  Map<String, dynamic> toList() => _$SignInResponseModelToJson(this);
}
