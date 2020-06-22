import 'package:food_delivery/models/location.dart';
import 'package:food_delivery/models/popularity.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:json_annotation/json_annotation.dart';

part 'restaurants_by_geocode.g.dart';

@JsonSerializable()
class RestaurantsByGeocode {
  RestaurantsByGeocode(
    this.location,
    this.popularity,
    this.nearbyRestaurants,
  );

  factory RestaurantsByGeocode.fromJson(Map<String, dynamic> json) =>
      _$RestaurantsByGeocodeFromJson(json);

  Map<String, dynamic> toJson() => _$RestaurantsByGeocodeToJson(this);

  final Location location;
  final Popularity popularity;

  @JsonKey(name: 'nearby_restaurants')
  final List<NearbyRestaurant> nearbyRestaurants;

  String get locationTitle => location.title ?? 'Food & Delivery';
  int get count => nearbyRestaurants.length ?? 0;

  List<NearbyRestaurant> _nearbyRestaurantsSorted() {
    final List<NearbyRestaurant> newList = [];
    newList.addAll(nearbyRestaurants);
    newList.sort((a, b) =>
        a.restaurant.popularityScore.compareTo(b.restaurant.popularityScore));
    return newList;
  }

  List<NearbyRestaurant> get nearbyRestaurantsSorted =>
      _nearbyRestaurantsSorted();
}
