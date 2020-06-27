import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;

import '../widgets/report_card.dart';

class MapScreen extends StatefulWidget {
  static const String id = '/map_screen';

  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<String> _items;
  String _mapStyle;
  GoogleMapController _mapController;

  @override
  void initState() {
    super.initState();
    _items = List<String>.generate(10000, (i) => "Item $i");
    rootBundle.loadString('assets/map_style.json').then((string) {
      _mapStyle = string;
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
              target: LatLng(37.77843, -122.41942),
              zoom: 12,
            ),
          ),
          Positioned(
            left: 10.0,
            right: 10.0,
            top: MediaQuery.of(context).size.height * 0.75,
            bottom: 0.0,
            child: SafeArea(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ReportCard(index)),
            ),
          ),
        ],
      ),
    );
  }
}
