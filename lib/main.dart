import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivery/Home.dart';
import 'package:food_delivery/blocs/restaurant/bloc/restaurants_bloc.dart';
import 'package:food_delivery/config.dart';
import 'package:food_delivery/data/providers/remote_restaurants_data_provider.dart';
import 'package:food_delivery/data/respositories/restaurants_repository.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart';

void main() {
  runApp(MyHomePage());
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Client httpClient;

  RemoteRestaurantsDataProvider remoteRestaurantsDataProvider;
  RestaurantsRepository restaurantsRepository;
  RestaurantsBloc restaurantsBloc;

  final Geolocator _geolocator = Geolocator();

  Widget _buildMaterialApp() {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Home(),
    );
  }

  Future<void> _fetchNearbyRestaurants() async {
    final Position currentPosition = await _geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);

    final String latitude = '${currentPosition.latitude}';
    final String longitude = '${currentPosition.longitude}';

    restaurantsBloc
        .add(FetchNearbyRestaurants(latitude: latitude, longitude: longitude));
  }

  @override
  void initState() {
    super.initState();

    httpClient = Client();
    remoteRestaurantsDataProvider = RemoteRestaurantsDataProvider(
        baseApiUrl: '$baseApiUrl', httpClient: httpClient);

    restaurantsRepository =
        RestaurantsRepository(remote: remoteRestaurantsDataProvider);

    restaurantsBloc = RestaurantsBloc(repository: restaurantsRepository);

    _fetchNearbyRestaurants();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: <BlocProvider<Bloc<dynamic, dynamic>>>[
        BlocProvider<RestaurantsBloc>(
          create: (BuildContext context) => restaurantsBloc,
        ),
      ],
      child: _buildMaterialApp(),
    );
  }

  @override
  void dispose() {
    restaurantsBloc.close();
    super.dispose();
  }
}
