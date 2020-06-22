import 'dart:async';
import 'package:food_delivery/models/restaurants_by_geocode.dart';
import 'package:meta/meta.dart';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_delivery/data/respositories/restaurants_repository.dart';

part 'restaurants_event.dart';
part 'restaurants_state.dart';

class RestaurantsBloc extends Bloc<RestaurantsEvent, RestaurantsState> {
  RestaurantsBloc({@required this.repository}) : assert(repository != null);

  final RestaurantsRepository repository;

  @override
  RestaurantsState get initialState => RestaurantsInitial();

  @override
  Stream<RestaurantsState> mapEventToState(
    RestaurantsEvent event,
  ) async* {
    if (event is FetchNearbyRestaurants) {
      final String latitude = event.latitude;
      final String longitude = event.longitude;

      final RestaurantsByGeocode restaurantsByGeocode =
          await repository.fetchRestaurantsByGeocode(latitude, longitude);

      yield NearbyRestaurantsFetched(restaurantsByGeocode);
    }
  }
}
