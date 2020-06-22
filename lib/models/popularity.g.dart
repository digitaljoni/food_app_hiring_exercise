// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popularity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Popularity _$PopularityFromJson(Map<String, dynamic> json) {
  return Popularity(
    (json['top_cuisines'] as List)?.map((e) => e as String)?.toList(),
  );
}

Map<String, dynamic> _$PopularityToJson(Popularity instance) =>
    <String, dynamic>{
      'top_cuisines': instance.topCuisines,
    };
