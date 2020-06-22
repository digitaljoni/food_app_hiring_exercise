import 'package:json_annotation/json_annotation.dart';

part 'user_rating.g.dart';

@JsonSerializable()
class UserRating {
  UserRating(
    this.aggregateRating,
    this.votes,
  );

  factory UserRating.fromJson(Map<String, dynamic> json) =>
      _$UserRatingFromJson(json);

  Map<String, dynamic> toJson() => _$UserRatingToJson(this);

  @JsonKey(name: 'aggregate_rating')
  final String aggregateRating;
  final String votes;
}
