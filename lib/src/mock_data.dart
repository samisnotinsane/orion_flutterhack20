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
    Partner(id: "p-001", name: "McDonald's", details: "FREE NUGGIES", cost: 50),
    Partner(id: "p-002", name: "KFC", details: "FREE WINGS", cost: 30),
    Partner(id: "p-003", name: "Pizza Hut", details: "FREE SLICE", cost: 70),
    Partner(id: "p-004", name: "Tortilla", details: "FREE NACHOS", cost: 15),
    Partner(id: "p-005", name: "Chillango", details: "FREE SALSA", cost: 20),
    Partner(id: "p-006", name: "Juicerios", details: "FREE JUICE", cost: 32),
    Partner(id: "p-007", name: "Burger", details: "FREE FRIES", cost: 90)
  ];

  UnmodifiableListView<Report> get reports => UnmodifiableListView(_reports);

  void addReportToTop(Report report) => _reports.insert(0, report);
  UnmodifiableListView<Partner> get partners => UnmodifiableListView(_partners);
}

MockData data = MockData();
