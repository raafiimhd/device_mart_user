import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:device/domain/models/profile/address/get_address/get_address_model.dart';
part 'get_address_resp_model.g.dart';

@JsonSerializable()
class GetAddressRespModel {
  List<GetAddressModel>? data;
  int? statusCode;
  String? message;
  dynamic error;
  GetAddressRespModel({
    this.data,
    this.statusCode,
    this.message,
    this.error,
  });

  factory GetAddressRespModel.fromJson(Map<String, dynamic> json) =>
      _$GetAddressRespModelFromJson(json);

  Map<String, dynamic> toJson() => _$GetAddressRespModelToJson(this);
}
