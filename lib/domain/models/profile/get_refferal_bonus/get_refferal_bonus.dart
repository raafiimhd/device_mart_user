import 'package:json_annotation/json_annotation.dart';

import 'data.dart';

part 'get_refferal_bonus.g.dart';

@JsonSerializable()
class GetRefferalBonus {
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  Data? data;
  dynamic error;

  GetRefferalBonus({this.statusCode, this.message, this.data, this.error});

  factory GetRefferalBonus.fromJson(Map<String, dynamic> json) {
    return _$GetRefferalBonusFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetRefferalBonusToJson(this);
}
