import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'razor_pay_model.g.dart';

@JsonSerializable()
class RazorPayModel {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  RazorPayModel({this.statusCode, this.message, this.data, this.error});

  factory RazorPayModel.fromJson(Map<String, dynamic> json) {
    return _$RazorPayModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RazorPayModelToJson(this);
}
