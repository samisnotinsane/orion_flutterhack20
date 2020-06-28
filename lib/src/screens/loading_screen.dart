import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:geolocator/geolocator.dart';

import '../styles.dart';
import 'home.dart';

class LoadingScreen extends StatefulWidget {
  static const String id = '/loading_screen';
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Home(
            devicePosition: position,
          ),
        ),
      );
    }).catchError((e) {
      print(e);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: Center(
        child: SpinKitFoldingCube(
          color: Colors.white,
          size: 50.0,
        ),
      ),
    );
  }
}
