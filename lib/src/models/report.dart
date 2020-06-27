import 'package:google_maps_flutter/google_maps_flutter.dart';

class Report {
  String id;
  String title;
  String details;
  String imagePath;
  LatLng position;

  Report({this.id, this.title, this.details, this.imagePath, this.position});
}
