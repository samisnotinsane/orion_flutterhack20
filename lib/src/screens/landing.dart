import 'package:flutter/material.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:orion_flutterhack20/src/widgets/retro_button.dart';

import 'loading_screen.dart';

import '../styles.dart';

class LandingScreen extends StatefulWidget {
  static const String id = '/landing_screen';

  _LandingScreenState createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  bool isOpen = false;

  @override
  Widget build(BuildContext context) {
    const buttonHeightFactor = 0.6;

    return Scaffold(
      body: Stack(children: <Widget>[
        SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: FlareActor('assets/ui.flr', animation: 'show')),
        Align(
            alignment: Alignment(0, buttonHeightFactor),
            heightFactor: 300,
            child: Opacity(
              opacity: 0,
              child: ButtonTheme(
                height: MediaQuery.of(context).size.height * 0.1,
                minWidth: MediaQuery.of(context).size.width * 0.5,
                child: RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoadingScreen.id);
                  },
                ),
              ),
            )),
      ]),
    );
  }
}
