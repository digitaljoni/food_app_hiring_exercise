// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurants_by_geocode.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RestaurantsByGeocode _$RestaurantsByGeocodeFromJson(Map<String, dynamic> json) {
  return RestaurantsByGeocode(
    json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    json['popularity'] == null
        ? null
        : Popularity.fromJson(json['popularity'] as Map<String, dynamic>),
    (json['nearby_restaurants'] as List)
        ?.map((e) => e == null
            ? null
            : NearbyRestaurant.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RestaurantsByGeocodeToJson(
        RestaurantsByGeocode instance) =>
    <String, dynamic>{
      'location': instance.location,
      'popularity': instance.popularity,
      'nearby_restaurants': instance.nearbyRestaurants,
    };
