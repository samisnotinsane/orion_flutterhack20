import 'package:flutter/material.dart';
import 'package:orion_flutterhack20/src/screens/loading_screen.dart';
import 'package:orion_flutterhack20/src/styles.dart';

import '../styles.dart';

class LandingScreen extends StatelessWidget {
  static const String id = '/landing_screen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColor,
      body: Center(
        child: FlatButton(
          onPressed: () {
            Navigator.pushNamed(context, LoadingScreen.id);
          },
          child: Text('Let\'s Tidy'),
          color: Theme.of(context).accentColor,
        ),
      ),
    );
  }
}
