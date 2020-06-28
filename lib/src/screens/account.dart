import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:orion_flutterhack20/src/mock_data.dart';
import 'package:orion_flutterhack20/src/models/report.dart';
import 'package:orion_flutterhack20/src/models/users.dart';
import 'package:orion_flutterhack20/src/styles.dart';
import 'package:orion_flutterhack20/src/widgets/profile-image.dart';
import 'package:orion_flutterhack20/src/widgets/report_card.dart';

class Account extends StatelessWidget {
  final Users user;
  Account({this.user});
  List<Report> _reports = MockData().reports;

  // Report report1 = Report(
  //   id: "r-001",
  //   title: "Hyde Park",
  //   details: "woa woah",
  //   imagePath: 'assets/hyde-park.jpg',
  //   position: LatLng(51.5078085, -0.1685757),
  //   karma: 500,
  //   minsPassed: 21,
  // );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColorAlt,
      body: Center(
        child: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              alignment: Alignment.topLeft,
              child: BackButton(onPressed: () {
                Navigator.pop(context);
              }),
            ),
            userName(user.username),
            SizedBox(height: 10),
            info('Member since:'),
            info(user.memberSince),
            SizedBox(height: 20),
            Center(
              child: Container(
                width: 200,
                height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: NetworkImage(user.imageURL), fit: BoxFit.fill),
                ),
              ),
            ),
            spacing(),
            heading('User Statement'),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: info(user.userStatement),
            ),
            spacing(),
            heading('Friends'),
            SizedBox(height: 20),
            Container(
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  ProfileImage(
                    userImage: MockData().user[0],
                    userNumber: 0,
                  ),
                  ProfileImage(
                    userImage: MockData().user[1],
                    userNumber: 1,
                  ),
                  ProfileImage(
                    userImage: MockData().user[2],
                    userNumber: 2,
                  ),
                  ProfileImage(
                    userImage: MockData().user[3],
                    userNumber: 3,
                  ),
                ],
              ),
            ),
            spacing(),
            heading('Report History'),
            SizedBox(height: 20),
            Container(
              height: 350,
              child: ListView.builder(
                itemCount: _reports.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => ReportCard(_reports[index]),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget userName(String name) {
  return Center(
    child: Text(
      name,
      style: TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      ),
    ),
  );
}

Widget heading(String header) {
  return Center(
    child: Text(
      header,
      style: TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.w700,
      ),
    ),
  );
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

Widget info(info) {
  return Center(
    child: Text(
      info,
      textAlign: TextAlign.center,
    ),
  );
}

//TODO mock data for users:
//username, images, member since, User statement, report history/clean-app history, friends list
