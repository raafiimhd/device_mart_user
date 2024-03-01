import 'package:freezed_annotation/freezed_annotation.dart';
part 'rating_qurrey.g.dart';

@JsonSerializable()
class RatingQurrey {
  @JsonKey(name: 'productID')
  int? id;
  RatingQurrey({
    this.id,
  });

  factory RatingQurrey.fromJson(Map<String, dynamic> json) =>
      _$RatingQurreyFromJson(json);
  Map<String, dynamic> toJson() => _$RatingQurreyToJson(this);
}
