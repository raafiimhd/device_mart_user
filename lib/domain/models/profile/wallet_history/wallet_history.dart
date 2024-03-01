import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'wallet_history.g.dart';

@JsonSerializable()
class WalletHistory {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  List<Datum>? data;
  dynamic error;

  WalletHistory({this.statusCode, this.message, this.data, this.error});

  factory WalletHistory.fromJson(Map<String, dynamic> json) {
    return _$WalletHistoryFromJson(json);
  }

  Map<String, dynamic> toJson() => _$WalletHistoryToJson(this);
}
