import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final int index;

  ReportCard(this.index);

  Widget build(context) {
    return Container(
        width: 300,
        child: Card(
            child: Column(children: [
          ListTile(
            leading: Icon(Icons.ac_unit),
            title: Text(
              'Item $index',
            ),
            subtitle: Text("adress hahaha"),
          ),
          Text("data")
        ])));
  }
}
