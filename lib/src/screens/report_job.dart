import 'package:flutter/material.dart';

class ReportJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(96, 86, 49, 1.0),
        title: Text('Report'),
      ),
      body: Center(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            ),
            heading('Report Clean-up'),
            spacing(),
            heading('Where?'),
            SizedBox(height: 10),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: 'Enter Location',
                  suffixIcon: Icon(Icons.my_location),
                ),
              ),
            ),
            Container(
                padding: EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Image.asset(
                  'assets/greenwich-map.png',
                )),
            spacing(),
            heading('Level'),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Icon(Icons.star_border, size: 50),
                Icon(Icons.star_border, size: 50),
                Icon(Icons.star_border, size: 50),
                Icon(Icons.star_border, size: 50),
                Icon(Icons.star_border, size: 50),
              ],
              //TODO make the stars buttons that add a star level to the job
            ),
            spacing(),
            heading('Details'),
            Container(
              margin: EdgeInsets.fromLTRB(30, 10, 30, 10),
              child: TextField(
                decoration:
                    InputDecoration(hintText: 'Deatils of the clean-up'),
              ),
            ),
            spacing(),
            heading('Equipment Required?'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  onPressed: null,
                  child: Text('Yes'),
                ),
                RaisedButton(
                  onPressed: null,
                  child: Text('No'),
                ),
                //TODO add a text box when yes is chosen
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Column spacing() {
  return Column(
    children: <Widget>[
      SizedBox(
        height: 20,
      ),
      Divider(
        color: Colors.grey[400],
        thickness: 1.5,
        endIndent: 30,
        indent: 30,
      ),
      SizedBox(
        height: 10,
      ),
    ],
  );
}

Widget heading(String header) {
  return Center(
    child: Text(
      '$header',
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}
