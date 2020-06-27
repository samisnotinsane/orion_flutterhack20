import 'package:flutter/widgets.dart';

abstract class Styles {
  static const Color primaryColor = Color.fromRGBO(96, 86, 49, 1.0);
  static const TextStyle userStatusName = TextStyle(
    color: primaryColor,
    fontWeight: FontWeight.bold,
    fontSize: 16.0,
  );
  static const TextStyle userStatusPoints = TextStyle(
    color: Color.fromRGBO(122, 111, 72, 1.0),
  );
}
