import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';

import 'loading_screen.dart';

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
          Navigator.pushNamed(context, LoadingScreen.id);
        },
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: FlareActor(
            'assets/ui.flr',
            animation: 'show',
          ),
        ),
      ),
    );
  }
}
