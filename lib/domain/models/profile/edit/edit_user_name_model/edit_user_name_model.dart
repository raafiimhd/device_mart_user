import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_user_name_model.g.dart';

@JsonSerializable()
class EditUserNameModel {
  String? name;
  EditUserNameModel({
    this.name,
  });

  factory EditUserNameModel.fromJson(Map<String, dynamic> json) =>
      _$EditUserNameModelFromJson(json);

  Map<String, dynamic> toJson() => _$EditUserNameModelToJson(this);
}
