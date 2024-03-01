import 'package:json_annotation/json_annotation.dart';

part 'rafferal_resp.g.dart';
@JsonSerializable()
class RefferalResp {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  RefferalResp({this.statusCode, this.message, this.data, this.error});

  factory RefferalResp.fromJson(Map<String, dynamic> json) {
    return _$RefferalRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RefferalRespToJson(this);
}
