import 'package:flutter/material.dart';

import '../styles.dart';

class RetroButton extends StatelessWidget {
  RetroButton({
    @required this.title,
    @required this.onPressed,
  });

  final String title;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: onPressed,
      child: Text(
        title,
        style: Styles.retroButtonTitle,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5.0),
        side: BorderSide(
          color: Colors.grey[900],
          width: 2.0,
        ),
      ),
    );
  }
}
