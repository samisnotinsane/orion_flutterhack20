import 'package:flutter/material.dart';
import 'package:orion_flutterhack20/src/screens/add_screen.dart';
import 'package:orion_flutterhack20/src/screens/landing.dart';
import 'package:orion_flutterhack20/src/screens/loading_screen.dart';

import 'src/styles.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tidy',
      theme: ThemeData(
        primaryColor: Styles.primaryColorAlt,
        accentColor: Styles.primaryColor,
      ),
      initialRoute: AddScreen.id,
      routes: {
        LandingScreen.id: (context) => LandingScreen(),
        LoadingScreen.id: (context) => LoadingScreen(),
        AddScreen.id: (context) => AddScreen(),
      },
    );
  }
}
