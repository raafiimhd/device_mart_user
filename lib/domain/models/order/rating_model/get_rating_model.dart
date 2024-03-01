import 'package:freezed_annotation/freezed_annotation.dart';
part 'get_rating_model.g.dart';

@JsonSerializable()
class GetRatingModel {
  int? statusCode;
  String? message;
  dynamic error;
  dynamic data;
  GetRatingModel({
    this.statusCode,
    this.message,
    required this.error,
    required this.data,
  });

  factory GetRatingModel.fromJson(Map<String, dynamic> json) =>
      _$GetRatingModelFromJson(json);
  Map<String, dynamic> toJson() => _$GetRatingModelToJson(this);
}
