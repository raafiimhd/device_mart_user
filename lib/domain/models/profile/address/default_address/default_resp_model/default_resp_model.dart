import 'package:json_annotation/json_annotation.dart';

part 'default_resp_model.g.dart';

@JsonSerializable()
class DefaultRespModel {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  DefaultRespModel({this.statusCode, this.message, this.data, this.error});

  factory DefaultRespModel.fromJson(Map<String, dynamic> json) {
    return _$DefaultRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DefaultRespModelToJson(this);
}
