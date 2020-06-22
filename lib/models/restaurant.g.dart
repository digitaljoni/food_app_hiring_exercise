// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NearbyRestaurant _$NearbyRestaurantFromJson(Map<String, dynamic> json) {
  return NearbyRestaurant(
    json['restaurant'] == null
        ? null
        : Restaurant.fromJson(json['restaurant'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$NearbyRestaurantToJson(NearbyRestaurant instance) =>
    <String, dynamic>{
      'restaurant': instance.restaurant,
    };

Restaurant _$RestaurantFromJson(Map<String, dynamic> json) {
  return Restaurant(
    json['id'] as String,
    json['name'] as String,
    json['location'] == null
        ? null
        : Location.fromJson(json['location'] as Map<String, dynamic>),
    json['average_cost_for_two'] as int,
    json['currency'] as String,
    json['thumb'] as String,
    json['user_rating'] == null
        ? null
        : UserRating.fromJson(json['user_rating'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$RestaurantToJson(Restaurant instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'location': instance.location,
      'average_cost_for_two': instance.averageCostForTwo,
      'currency': instance.currency,
      'thumb': instance.thumb,
      'user_rating': instance.userRating,
    };
