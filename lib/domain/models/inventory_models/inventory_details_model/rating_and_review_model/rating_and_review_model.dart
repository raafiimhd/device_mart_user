import 'package:freezed_annotation/freezed_annotation.dart';
part 'rating_and_review_model.g.dart';

@JsonSerializable()
class RatingAndReview {
  String? desription;
  int? rating;
  @JsonKey(name: 'rating_id')
  int? ratingId;
  @JsonKey(name: 'user_name')
  String? userName;
  RatingAndReview({
    this.desription,
    this.rating,
    this.ratingId,
    this.userName,
  });

  factory RatingAndReview.fromJson(Map<String, dynamic> json) {
    return _$RatingAndReviewFromJson(json);
  }
  Map<String, dynamic> toJson() => _$RatingAndReviewToJson(this);
}
