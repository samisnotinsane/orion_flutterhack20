import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../widgets/report_card.dart';

class MapScreen extends StatefulWidget {
  static const String id = '/map_screen';

  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  final items = List<String>.generate(10, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
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
