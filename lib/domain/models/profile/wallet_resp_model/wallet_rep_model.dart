import 'package:freezed_annotation/freezed_annotation.dart';
part 'wallet_rep_model.g.dart';

@JsonSerializable()
class WalletRespModel {
  int? statusCode;
  dynamic data;
  dynamic error;
  String? message;
  WalletRespModel({
    this.statusCode,
    this.data,
    this.error,
    this.message,
  });

  factory WalletRespModel.fromJson(Map<String, dynamic> json) =>
      _$WalletRespModelFromJson(json);

  Map<String, dynamic> toJson() => _$WalletRespModelToJson(this);
}
