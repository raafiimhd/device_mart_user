import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'wallet_model.g.dart';

@JsonSerializable()
class WalletModel {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  WalletModel({this.statusCode, this.message, this.data, this.error});

  factory WalletModel.fromJson(Map<String, dynamic> json) {
    return _$WalletModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WalletModelToJson(this);
}
