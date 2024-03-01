import 'package:freezed_annotation/freezed_annotation.dart';
part 'remove_cart_resp_model.g.dart';

@JsonSerializable()
class RemoveCartRespModel {
  int? statusCode;
  String? message;
  dynamic error;
  dynamic data;
  RemoveCartRespModel({
    this.statusCode,
    this.message,
    required this.error,
    required this.data,
  });

  factory RemoveCartRespModel.fromJson(Map<String, dynamic> json) =>
      _$RemoveCartRespModelFromJson(json);

  Map<String, dynamic> toJson() => _$RemoveCartRespModelToJson(this);
}
