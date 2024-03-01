import 'package:json_annotation/json_annotation.dart';

part 'rating_model.g.dart';

@JsonSerializable()
class RatingModel {
  String? description;
  int? rating;

  RatingModel({this.description, this.rating});

  factory RatingModel.fromJson(Map<String, dynamic> json) {
    return _$RatingModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$RatingModelToJson(this);
}
