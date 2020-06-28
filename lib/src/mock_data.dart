import 'dart:collection';

import 'models/report.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
      title: "Cool Park",
      details: "wii woah",
      imagePath: 'assets/cool-park.png',
      position: LatLng(51.5312883, -0.1561957),
      karma: 900,
      minsPassed: 55,
    ),
    Report(
      id: "r-003",
      title: "Other Park",
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

  UnmodifiableListView<Report> get reports => UnmodifiableListView(_reports);
}
