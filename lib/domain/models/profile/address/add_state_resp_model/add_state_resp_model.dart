import 'package:device/domain/models/profile/address/add_state_resp_model/datum.dart';
import 'package:json_annotation/json_annotation.dart';

part 'add_state_resp_model.g.dart';

@JsonSerializable()
class AddStateRespModel {
  List<Datum>? data;
  @JsonKey(name: 'status-code')
  int? statusCode;
  String? message;
  dynamic error;

  AddStateRespModel({this.statusCode, this.message, this.data, this.error});

  factory AddStateRespModel.fromJson(Map<String, dynamic> json) {
    return _$AddStateRespModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddStateRespModelToJson(this);
}
