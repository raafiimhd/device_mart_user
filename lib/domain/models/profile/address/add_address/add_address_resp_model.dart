import 'package:freezed_annotation/freezed_annotation.dart';
part 'add_address_resp_model.g.dart';

@JsonSerializable()
class AddAddressRespModel {
  String? message;
  dynamic data;
  dynamic error;
  int? statusCode;
  AddAddressRespModel({this.message, this.data, this.error, this.statusCode});

  factory AddAddressRespModel.fromJson(Map<String, dynamic> json) =>
      _$AddAddressRespModelFromJson(json);

  Map<String, dynamic> toJson() => _$AddAddressRespModelToJson(this);
}
