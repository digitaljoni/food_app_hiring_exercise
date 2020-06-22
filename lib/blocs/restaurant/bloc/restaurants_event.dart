part of 'restaurants_bloc.dart';

abstract class RestaurantsEvent extends Equatable {
  const RestaurantsEvent();
}

class FetchNearbyRestaurants extends RestaurantsEvent {
  FetchNearbyRestaurants({this.latitude, this.longitude});

  final String latitude;
  final String longitude;

  @override
  List<Object> get props => [latitude, longitude];

  @override
  String toString() => 'FetchNearbyRestaurants';
}
