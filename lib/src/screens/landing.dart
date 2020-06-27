import 'package:flutter/material.dart';

import 'map_screen.dart';

class LandingScreen extends StatelessWidget {
  static const String id = '/landing_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, MapScreen.id);
          },
          child: Text('Jump in.'),
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
