// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Location _$LocationFromJson(Map<String, dynamic> json) {
  return Location(
    json['title'] as String,
    json['address'] as String,
    json['locality'] as String,
    json['city'] as String,
    json['latitude'] as String,
    json['longitude'] as String,
  );
}

Map<String, dynamic> _$LocationToJson(Location instance) => <String, dynamic>{
      'title': instance.title,
      'address': instance.address,
      'locality': instance.locality,
      'city': instance.city,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
    };
