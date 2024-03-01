import 'package:json_annotation/json_annotation.dart';

part 'success_resp_model.g.dart';

@JsonSerializable()
class SuccessRespModel {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  SuccessRespModel({this.statusCode, this.message, this.data, this.error});

  factory SuccessRespModel.fromJson(Map<String, dynamic> json) {
    return _$SuccessRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SuccessRespModelToJson(this);
}
