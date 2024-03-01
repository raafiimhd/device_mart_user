import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_address_resp_model.g.dart';

@JsonSerializable()
class DeleteAddressRespModel {
  dynamic data;
  dynamic error;
  int? statusCode;
  String? message;
  DeleteAddressRespModel({
    required this.data,
    required this.error,
    this.statusCode,
    this.message,
  });

  factory DeleteAddressRespModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteAddressRespModelFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteAddressRespModelToJson(this);
}
