import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:geolocator/geolocator.dart';

import '../widgets/report_card.dart';
import '../widgets/user_status.dart';

class MapScreen extends StatefulWidget {
  static const String id = '/map_screen';

  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<String> _items;
  String _mapStyle;
  GoogleMapController _mapController;
  Position _currentPosition;

  @override
  void initState() {
    super.initState();
    // generate bottom cards.
    _items = List<String>.generate(5, (i) => "Item $i");
    // load map theme.
    rootBundle.loadString('assets/map_style.json').then((string) {
      _mapStyle = string;
    });
    _getCurrentLocation();
  }

  void _getCurrentLocation() {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        _currentPosition = position;
      });
      print('Device current position: $_currentPosition');
    }).catchError((e) {
      print(e);
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _mapController.setMapStyle(_mapStyle);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            onMapCreated: _onMapCreated,
            myLocationButtonEnabled: false,
            initialCameraPosition: CameraPosition(
              target:
                  LatLng(_currentPosition.latitude, _currentPosition.longitude),
              zoom: 12,
            ),
          ),
          // Bottom cards.
          Positioned(
            left: 10.0,
            right: 10.0,
            top: MediaQuery.of(context).size.height * 0.70,
            bottom: 10.0,
            child: SafeArea(
              child: ListView.builder(
                  itemCount: _items.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ReportCard(_items[index])),
            ),
          ),
          // User info in top right of screen.
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(right: 10.0),
              alignment: Alignment.topRight,
              child: UserStatus(),
            ),
          ),
        ],
      ),
    );
  }
}
