import 'dart:collection';

import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'models/report.dart';
import 'models/partner.dart';

class MockData {
  List<Report> _reports = [
    Report(
      id: "r-001",
      title: "Hyde Park",
      details: "woa woah",
      imagePath: 'assets/hyde-park.jpg',
      position: LatLng(51.5078085, -0.1685757),
      karma: 500,
      minsPassed: 21,
    ),
    Report(
      id: "r-002",
      title: "Greenwich Park",
      details: "wii woah",
      imagePath: 'assets/cool-park.png',
      position: LatLng(51.5312883, -0.1561957),
      karma: 900,
      minsPassed: 55,
    ),
    Report(
      id: "r-003",
      title: "Regent\'s Park",
      details: "waa woah",
      imagePath: 'assets/other-park.jpg',
      position: LatLng(51.5621613, -0.1672637),
      karma: 350,
      minsPassed: 120,
    ),
    Report(
      id: "r-004",
      title: "Danson Park",
      details: "Rubbish left after BBQ",
      imagePath: 'assets/cool-park.png',
      position: LatLng(51.4553, 0.1199),
      karma: 85,
      minsPassed: 15,
    ),
  ];

  List<Partner> _partners = [
    Partner(id: "p-001", name: "McDonald's", details: "FREE NUGGIES"),
    Partner(id: "p-002", name: "KFC", details: "FREE WINGS"),
    Partner(id: "p-003", name: "Pizza Hut", details: "FREE SLICE")
  ];

  UnmodifiableListView<Report> get reports => UnmodifiableListView(_reports);
  UnmodifiableListView<Partner> get partners => UnmodifiableListView(_partners);
}
