import 'package:flutter/material.dart';

import '../styles.dart';

class RetroTextField extends StatefulWidget {
  @override
  _RetroTextFieldState createState() => _RetroTextFieldState();
}

class _RetroTextFieldState extends State<RetroTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Styles.primaryColorContrast,
            width: 3.0,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Styles.primaryColor,
            width: 5.0,
          ),
        ),
        labelText: 'Location',
      ),
    );
  }
}
