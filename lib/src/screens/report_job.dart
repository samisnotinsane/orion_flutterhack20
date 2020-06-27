import 'package:flutter/material.dart';

class ReportJob extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(125, 159, 120, 1),
        title: Text('Report'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
          ),
          Text(
            'Clean-up Report',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey[400],
            thickness: 1.5,
            endIndent: 30,
            indent: 30,
          ),
          Text(
            'Where?',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
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
          SizedBox(
            height: 10,
          ),
          Divider(
            color: Colors.grey[400],
            thickness: 1.5,
            endIndent: 30,
            indent: 30,
          ),
          Text(
            'Level',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          

        ],
      )),
    );
  }
}
