import 'package:food_delivery/data/providers/remote_restaurants_data_provider.dart';
import 'package:food_delivery/models/restaurants_by_geocode.dart';
import 'package:meta/meta.dart';

class RestaurantsRepository {
  RestaurantsRepository({@required this.remote}) : assert(remote != null);

  final RemoteRestaurantsDataProvider remote;

  Future<RestaurantsByGeocode> fetchRestaurantsByGeocode(
    String latitude,
    String longitude,
  ) async {
    return await remote.fetchRestaurantsByGeocode(latitude, longitude);
  }
}
