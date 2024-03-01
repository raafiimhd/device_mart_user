import 'package:json_annotation/json_annotation.dart';

part 'razorpay_process_resp.g.dart';

@JsonSerializable()
class RazorpayProcessResp {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  dynamic data;
  dynamic error;

  RazorpayProcessResp({
    this.statusCode,
    this.message,
    this.data,
    this.error,
  });

  factory RazorpayProcessResp.fromJson(Map<String, dynamic> json) {
    return _$RazorpayProcessRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RazorpayProcessRespToJson(this);
}
