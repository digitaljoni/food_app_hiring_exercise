part of 'restaurants_bloc.dart';

abstract class RestaurantsState extends Equatable {
  const RestaurantsState();
}

class RestaurantsInitial extends RestaurantsState {
  @override
  List<Object> get props => [];
}

class NearbyRestaurantsFetched extends RestaurantsState {
  NearbyRestaurantsFetched(this.restaurantsByGeocode);
  final RestaurantsByGeocode restaurantsByGeocode;

  @override
  List<Object> get props => [restaurantsByGeocode];
}
