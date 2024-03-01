import 'package:json_annotation/json_annotation.dart';

part 'datum.g.dart';

@JsonSerializable()
class Datum {
  int? id;
  @JsonKey(name: 'transaction_time')
  DateTime? transactionTime;
  @JsonKey(name: 'user_id')
  int? userId;
  int? amount;
  @JsonKey(name: 'transaction_type')
  String? transactionType;

  Datum({
    this.id,
    this.transactionTime,
    this.userId,
    this.amount,
    this.transactionType,
  });

  factory Datum.fromJson(Map<String, dynamic> json) => _$DatumFromJson(json);

  Map<String, dynamic> toJson() => _$DatumToJson(this);
}
