// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_rating.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserRating _$UserRatingFromJson(Map<String, dynamic> json) {
  return UserRating(
    json['aggregate_rating'] as String,
    json['votes'] as String,
  );
}

Map<String, dynamic> _$UserRatingToJson(UserRating instance) =>
    <String, dynamic>{
      'aggregate_rating': instance.aggregateRating,
      'votes': instance.votes,
    };
