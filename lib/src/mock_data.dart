import 'dart:collection';

import 'models/report.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'models/users.dart';

class MockData {

  List<Report> _reports = [
    Report(
      id: "r-001",
      title: "Hyde Park",
      details: "woa woah",
      imagePath: 'assets/hyde-park.jpg',
      position: LatLng(51.5078085, -0.1685757),
      karma: 500,
      minsPassed: 21,
    ),
    Report(
      id: "r-002",
      title: "Greenwich Park",
      details: "wii woah",
      imagePath: 'assets/cool-park.png',
      position: LatLng(51.5312883, -0.1561957),
      karma: 900,
      minsPassed: 55,
    ),
    Report(
      id: "r-003",
      title: "Regent\'s Park",
      details: "waa woah",
      imagePath: 'assets/other-park.jpg',
      position: LatLng(51.5621613, -0.1672637),
      karma: 350,
      minsPassed: 120,
    ),
    Report(
      id: "r-004",
      title: "Danson Park",
      details: "Rubbish left after BBQ",
      imagePath: 'assets/cool-park.png',
      position: LatLng(51.4553, 0.1199),
      karma: 85,
      minsPassed: 15,
    ),
  ];

   List <Users> _users = [
      Users(
        username: 'SamIsNotInsane',
        memberSince: '27/06/2020',
        imageURL:
            'https://ca.slack-edge.com/T016V2J50RW-U015QEXDC3H-g0a0a6c10f71-512',
        userStatement: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,',
      ),
      Users(
        username: 'Cakeydoodoo',
        memberSince: '28/06/2020',
        imageURL:
            'https://ca.slack-edge.com/T016V2J50RW-U0163RQSQ3F-0c7048510a8f-512',
        userStatement: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,',
      ),
      Users(
        username: 'Jen698',
        memberSince: '28/06/2020',
        imageURL:
            'https://images.pexels.com/photos/3825161/pexels-photo-3825161.jpeg?auto=compress&cs=tinysrgb&dpr=3&h=750&w=1260',
        userStatement: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,',
      ),
       Users(
        username: 'MarzBarz',
        memberSince: '28/06/2020',
        imageURL:
            'https://images.pexels.com/photos/3769021/pexels-photo-3769021.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260',
        userStatement: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,',
      ),

      

      
    ];


    List<Users> get user => _users;
  


  UnmodifiableListView<Report> get reports => UnmodifiableListView(_reports);
}
