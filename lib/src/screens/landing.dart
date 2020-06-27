import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'map_screen.dart';

class LandingScreen extends StatefulWidget {
  static const String id = '/landing_screen';

  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, MapScreen.id);
        },
        child: FlareActor(
          'assets/ui.flr',
          animation: 'show',
        ),
      ),
    );
  }
}
