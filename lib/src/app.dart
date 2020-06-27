import 'package:flutter/material.dart';

import './screens/home.dart';

class App extends StatelessWidget {
  Widget build(context) => MaterialApp(
        title: 'Apperino',
        onGenerateRoute: routes,
      );

  Route routes(RouteSettings settings) {
    print('Route: ${settings.name}');

    switch (settings.name) {
      // case '/add-workout':
      //   return MaterialPageRoute(builder: (context) => AddWorkoutScreen());
      default:
        return MaterialPageRoute(builder: (context) => Home());
    }
  }
}
