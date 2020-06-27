import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:geolocator/geolocator.dart';

import '../models/report.dart';
import '../widgets/report_card.dart';
import '../widgets/user_status.dart';

import '../mock_data.dart';

class MapScreen extends StatefulWidget {
  static const String id = '/map_screen';

  MapScreen({@required this.devicePosition});

  final Position devicePosition;

  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  List<Report> _reports = MockData().reports;
  String _mapStyle;
  GoogleMapController _mapController;
  Set<Marker> _markers = HashSet<Marker>();

  @override
  void initState() {
    super.initState();
    // load map theme.
    rootBundle.loadString('assets/map_style.json').then((string) {
      _mapStyle = string;
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
    _mapController.setMapStyle(_mapStyle);

    // Add markers to map
    for (Report report in _reports) {
      _markers.add(
        Marker(
          markerId: MarkerId(report.id),
          position: LatLng(report.position.latitude, report.position.longitude),
          infoWindow: InfoWindow(
            title: report.title,
            snippet: report.details,
          ),
        ),
      );
    }

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          GoogleMap(
            myLocationEnabled: true,
            onMapCreated: _onMapCreated,
            myLocationButtonEnabled: false,
            markers: _markers,
            initialCameraPosition: CameraPosition(
              target: LatLng(widget.devicePosition.latitude,
                  widget.devicePosition.longitude),
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
                  itemCount: _reports.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => ReportCard(_reports[index])),
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
