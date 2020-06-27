import 'package:flutter/material.dart';

class ReportCard extends StatelessWidget {
  final String title;

  ReportCard(this.title);

  Widget build(context) {
    return Container(
      width: 300,
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        child: Column(
          children: [
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset('assets/trash.png'),
              ),
              title: Text(title),
              subtitle: Text("address hahaha"),
              trailing: Icon(Icons.location_on),
            ),
            ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 10),
              title: Text("Details:"),
              subtitle: Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
            )
          ],
        ),
      ),
    );
  }
}
