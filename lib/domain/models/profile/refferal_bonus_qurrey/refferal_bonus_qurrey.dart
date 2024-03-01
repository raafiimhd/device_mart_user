import 'package:freezed_annotation/freezed_annotation.dart';
part 'refferal_bonus_qurrey.g.dart';
@JsonSerializable()
class RefferalBonusQurrey {
  String? code;
  RefferalBonusQurrey({
    this.code,
  });

  factory RefferalBonusQurrey.fromJson(Map<String, dynamic> json) =>
      _$RefferalBonusQurreyFromJson(json);
  Map<String, dynamic> toJson() => _$RefferalBonusQurreyToJson(this);
}
