import 'package:freezed_annotation/freezed_annotation.dart';
part 'id_qurrey_model.g.dart';

@JsonSerializable()
class IdQurreyModel {
  @JsonKey(name: 'addressID')
  int? id;
  IdQurreyModel({
    this.id,
  });

  factory IdQurreyModel.fromJson(Map<String, dynamic> json) =>
      _$IdQurreyModelFromJson(json);

  Map<String, dynamic> toJson() => _$IdQurreyModelToJson(this);
}
