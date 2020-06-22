import 'package:json_annotation/json_annotation.dart';

part 'popularity.g.dart';

@JsonSerializable()
class Popularity {
  Popularity(
    this.topCuisines,
  );

  factory Popularity.fromJson(Map<String, dynamic> json) =>
      _$PopularityFromJson(json);

  Map<String, dynamic> toJson() => _$PopularityToJson(this);

  @JsonKey(name: 'top_cuisines')
  final List<String> topCuisines;
}
