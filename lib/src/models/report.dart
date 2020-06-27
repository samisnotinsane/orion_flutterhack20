import 'package:google_maps_flutter/google_maps_flutter.dart';

class Report {
  String title;
  String details;
  String imagePath;
  CameraPosition position;

  Report({this.title, this.details, this.imagePath, this.position});
}
