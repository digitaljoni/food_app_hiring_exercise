import 'package:food_delivery/models/location.dart';
import 'package:food_delivery/models/user_rating.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurant.g.dart';

@JsonSerializable()
class NearbyRestaurant {
  NearbyRestaurant(this.restaurant);

  factory NearbyRestaurant.fromJson(Map<String, dynamic> json) =>
      _$NearbyRestaurantFromJson(json);

  Map<String, dynamic> toJson() => _$NearbyRestaurantToJson(this);

  final Restaurant restaurant;
}

@JsonSerializable()
class Restaurant {
  Restaurant(
    this.id,
    this.name,
    this.location,
    this.averageCostForTwo,
    this.currency,
    this.thumb,
    this.userRating,
  );

  factory Restaurant.fromJson(Map<String, dynamic> json) =>
      _$RestaurantFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantToJson(this);

  final String id;
  final String name;
  final Location location;

  @JsonKey(name: 'average_cost_for_two')
  final int averageCostForTwo;
  final String currency;
  final String thumb;

  @JsonKey(name: 'user_rating')
  final UserRating userRating;

  String get address => location.address ?? '';
  double get popularityScore =>
      double.parse(userRating.aggregateRating ?? '0') *
      double.parse(userRating.votes ?? '0');

  String get aveerageCost => '${currency ?? ''}${averageCostForTwo ?? ''}';
}
