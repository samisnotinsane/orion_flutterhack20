import 'package:flutter/material.dart';
import 'package:orion_flutterhack20/src/widgets/retro_button.dart';

import '../models/report.dart';
import '../styles.dart';

class ReportCard extends StatelessWidget {
  final Report report;

  ReportCard(this.report);
  Widget build(context) {
    return Card(
      color: Styles.primaryColorAlt,
      child: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: AspectRatio(
              aspectRatio:3/2,
              child: Image.asset(report.imagePath, fit: BoxFit.fill)),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        report.title,
                        style: Styles.reportCardTitle,
                      ),
                      SizedBox(height: 8.0),
                      Row(
                        children: <Widget>[
                          Text(
                            '${report.karma}',
                            style: Styles.reportCardSynopsis,
                          ),
                          SizedBox(width: 5.0),
                          Text('karma'),
                        ],
                      ),
                      Text(
                        '${report.minsPassed} mins ago',
                      ),
                    ],
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[],
                      ),
                    ],
                  ),
                  RetroButton(
                    onPressed: () {
                      // TODO: Nav to details.
                      print('Card onPressed not yet implemented');
                    },
                    title: 'Tidy',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
