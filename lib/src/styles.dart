import 'package:flutter/widgets.dart';

abstract class Styles {
  static const Color primaryColor = Color.fromRGBO(96, 86, 49, 1.0);
  static const Color primaryColorAlt = Color.fromRGBO(240, 233, 217, 1.0);
  static const TextStyle userStatusName = TextStyle(
    color: Color.fromRGBO(33, 33, 33, 1.0),
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
  );
  static const TextStyle userStatusPoints = TextStyle(
    color: Color.fromRGBO(33, 33, 33, 1.0),
  );
  static const TextStyle reportCardTitle = TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );
  static const TextStyle reportCardSynopsis = TextStyle(
    fontWeight: FontWeight.bold,
  );
}
