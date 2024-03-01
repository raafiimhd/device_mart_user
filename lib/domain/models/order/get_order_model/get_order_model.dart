import 'package:json_annotation/json_annotation.dart';

import 'datum.dart';

part 'get_order_model.g.dart';

@JsonSerializable()
class GetOrderModel {
  List<Datum>? data;
  String? error;
  String? message;
  @JsonKey(name: 'status-code')
  int? statusCode;

  GetOrderModel({this.data, this.error, this.message, this.statusCode});

  factory GetOrderModel.fromJson(Map<String, dynamic> json) {
    return _$GetOrderModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetOrderModelToJson(this);
}
