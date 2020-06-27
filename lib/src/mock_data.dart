import 'models/report.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<Report> reports = [
  Report(
      title: "Hyde Park",
      details: "woa woah",
      imagePath: 'assets/hyde-park.jpg',
      position: CameraPosition(target: LatLng(51.5078085, -0.1685757))),
  Report(
      title: "Cool Park",
      details: "wii woah",
      imagePath: 'assets/cool-park.png',
      position: CameraPosition(target: LatLng(51.5312883, -0.1561957))),
  Report(
      title: "Other Park",
      details: "waa woah",
      imagePath: 'assets/other-park.jpg',
      position: CameraPosition(target: LatLng(51.5621613, -0.1672637))),
];
