import 'package:flutter/material.dart';
import 'package:orion_flutterhack20/src/screens/landing.dart';

import 'src/screens/map_screen.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tidy',
      theme: ThemeData(
        primaryColor: Colors.amber.shade200,
        accentColor: Colors.amberAccent,
      ),
      initialRoute: LandingScreen.id,
      routes: {
        LandingScreen.id: (context) => LandingScreen(),
        MapScreen.id: (context) => MapScreen(),
      },
    );
  }
}
