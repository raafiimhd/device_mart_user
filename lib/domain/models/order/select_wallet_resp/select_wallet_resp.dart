import 'package:json_annotation/json_annotation.dart';

part 'select_wallet_resp.g.dart';

@JsonSerializable()
class SelectWalletResp {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  dynamic data;
  String? error;

  SelectWalletResp({this.statusCode, this.message, this.data, this.error});

  factory SelectWalletResp.fromJson(Map<String, dynamic> json) {
    return _$SelectWalletRespFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SelectWalletRespToJson(this);
}
