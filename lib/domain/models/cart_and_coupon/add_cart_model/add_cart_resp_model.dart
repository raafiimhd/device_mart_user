import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_cart_resp_model.g.dart';

@JsonSerializable()
class AddCartRespModel {
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;
  AddCartRespModel({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory AddCartRespModel.fromJson(Map<String, dynamic> json) =>
      _$AddCartRespModelFromJson(json);
  Map<String, dynamic> toJson() => _$AddCartRespModelToJson(this);
}
