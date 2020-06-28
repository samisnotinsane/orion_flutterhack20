import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:orion_flutterhack20/src/screens/camera_app.dart';
import 'package:orion_flutterhack20/src/screens/landing.dart';
import 'package:orion_flutterhack20/src/screens/loading_screen.dart';

import 'src/styles.dart';

void main() async {
  // Ensure that plugin services are initialized so that `availableCameras()`
  // can be called before `runApp()`
  WidgetsFlutterBinding.ensureInitialized();

  // Obtain a list of the available cameras on the device.
  final cameras = await availableCameras();

  // Get a specific camera from the list of available cameras.
  final rearCamera = cameras.first;

  runApp(
    App(
      rearCam: rearCamera,
    ),
  );
}

class App extends StatelessWidget {
  final CameraDescription rearCam;

  const App({
    Key key,
    @required this.rearCam,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tidy',
      theme: ThemeData(
        primaryColor: Styles.primaryColorAlt,
        accentColor: Styles.primaryColor,
      ),
      initialRoute: LandingScreen.id,
      routes: {
        LandingScreen.id: (context) => LandingScreen(),
        LoadingScreen.id: (context) => LoadingScreen(rearCam: rearCam),
        CameraApp.id: (context) => CameraApp(camera: rearCam),
      },
    );
  }
}
