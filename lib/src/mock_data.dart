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
    ),
    Report(
      id: "r-002",
      title: "Cool Park",
      details: "wii woah",
      imagePath: 'assets/cool-park.png',
      position: LatLng(51.5312883, -0.1561957),
    ),
    Report(
      id: "r-003",
      title: "Other Park",
      details: "waa woah",
      imagePath: 'assets/other-park.jpg',
      position: LatLng(51.5621613, -0.1672637),
    ),
  ];

  UnmodifiableListView<Report> get reports => UnmodifiableListView(_reports);
}
