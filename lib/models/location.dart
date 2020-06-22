import 'package:json_annotation/json_annotation.dart';

part 'location.g.dart';

@JsonSerializable()
class Location {
  Location(
    this.title,
    this.address,
    this.locality,
    this.city,
    this.latitude,
    this.longitude,
  );

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);

  Map<String, dynamic> toJson() => _$LocationToJson(this);

  final String title;
  final String address;
  final String locality;
  final String city;
  final String latitude;
  final String longitude;
}
