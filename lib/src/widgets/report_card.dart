import 'package:flutter/material.dart';

import '../models/report.dart';

class ReportCard extends StatelessWidget {
  final Report report;

  ReportCard(this.report);

  Widget build(context) {
    return Container(
        width: 300,
        child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            child: Column(children: [
              ListTile(
                contentPadding: EdgeInsets.symmetric(horizontal: 10),
                leading: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(report.imagePath),
                ),
                title: Text(report.title),
                subtitle: Text("address hahaha"),
                trailing: Icon(Icons.location_on),
              ),
              ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 10),
                  title: Text("Details:"),
                  subtitle: Text(report.details))
            ])));
  }
}
