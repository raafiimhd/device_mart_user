// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rating_and_review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RatingAndReview _$RatingAndReviewFromJson(Map<String, dynamic> json) =>
    RatingAndReview(
      desription: json['desription'] as String?,
      rating: json['rating'] as int?,
      ratingId: json['rating_id'] as int?,
      userName: json['user_name'] as String?,
    );

Map<String, dynamic> _$RatingAndReviewToJson(RatingAndReview instance) =>
    <String, dynamic>{
      'desription': instance.desription,
      'rating': instance.rating,
      'rating_id': instance.ratingId,
      'user_name': instance.userName,
    };
