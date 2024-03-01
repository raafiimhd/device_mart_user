import 'package:freezed_annotation/freezed_annotation.dart';
part 'inc_and_dec_resp_model.g.dart';

@JsonSerializable()
class IncrementAndDecrementRespModel {
  int? statusCode;
  String? message;
  dynamic error;
  dynamic data;
  IncrementAndDecrementRespModel({
    this.statusCode,
    this.message,
    required this.error,
    required this.data,
  });

  factory IncrementAndDecrementRespModel.fromJson(Map<String, dynamic> json) =>
      _$IncrementAndDecrementRespModelFromJson(json);
  Map<String, dynamic> toJson() => _$IncrementAndDecrementRespModelToJson(this);
}
