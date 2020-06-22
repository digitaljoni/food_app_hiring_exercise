import 'dart:convert';

import 'package:food_delivery/config.dart';
import 'package:food_delivery/models/restaurants_by_geocode.dart';
import 'package:http/http.dart';
import 'package:meta/meta.dart';

class RemoteRestaurantsDataProvider {
  RemoteRestaurantsDataProvider({
    @required this.httpClient,
    @required this.baseApiUrl,
  });

  final Client httpClient;
  final String baseApiUrl;

  Future<RestaurantsByGeocode> fetchRestaurantsByGeocode(
    String latitude,
    String longitude,
  ) async {
    final String url = '$baseApiUrl/geocode?lat=$latitude&lon=$longitude';

    final Response response = await httpClient.get(
      url,
      headers: {'user-key': apiKey},
    );

    if (response.statusCode != 200) {
      return null;
    }

    final dynamic jsonDecoded = jsonDecode(response.body);
    final RestaurantsByGeocode restaurantsByGeocode =
        RestaurantsByGeocode.fromJson(jsonDecoded);

    return restaurantsByGeocode;
  }
}
