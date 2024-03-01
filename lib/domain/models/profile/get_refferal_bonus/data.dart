import 'package:json_annotation/json_annotation.dart';

part 'data.g.dart';

@JsonSerializable()
class Data {
  int? id;
  @JsonKey(name: 'user_id')
  int? userId;
  @JsonKey(name: 'refferal_code')
  String? refferalCode;

  Data({this.id, this.userId, this.refferalCode});

  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

  Map<String, dynamic> toJson() => _$DataToJson(this);
}
