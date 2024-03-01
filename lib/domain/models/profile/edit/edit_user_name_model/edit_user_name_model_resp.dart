import 'package:freezed_annotation/freezed_annotation.dart';
part 'edit_user_name_model_resp.g.dart';

@JsonSerializable()
class EditUserNameRespModel {
  dynamic data;
  String? error;
  String? message;
  @JsonKey(name: 'status-code')
  int? statusCode;

  EditUserNameRespModel({this.data, this.error, this.message, this.statusCode});

  factory EditUserNameRespModel.fromJson(Map<String, dynamic> json) {
    return _$EditUserNameRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$EditUserNameRespModelToJson(this);
}
