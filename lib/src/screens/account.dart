import 'package:flutter/material.dart';
import 'package:orion_flutterhack20/src/mock_data.dart';
import 'package:orion_flutterhack20/src/models/users.dart';
import 'package:orion_flutterhack20/src/styles.dart';

class Account extends StatelessWidget {
  final Users user;
//List<Users> users= MockData().users;
  Account({this.user});

  @override
  Widget build(BuildContext context) {
    // for (Users user in users) {
    //   users.add(
    //     Users(
    //       username: user.username,
    //       imageURL: user.imageURL,
    //       memberSince: user.memberSince,
    //       userStatement: user.userStatement,
    //     ),
    //   );
    // }

    return Scaffold(
      backgroundColor: Styles.primaryColorAlt,
      body: Center(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                BackButton(onPressed: () {
                  Navigator.pop(context);
                }),
                userName(user.username),
                SizedBox(height: 10),
                info('Member since:'),
                info(user.memberSince),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            user.imageURL),
                        fit: BoxFit.fill),
                  ),
                ),
                spacing(),
                heading('User Statement'),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20,20,20,0),
                  child: info(user.userStatement),
                ),
                spacing(),

                
              ],
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
    child: Text(info,
    textAlign: TextAlign.center,),
  );
}

//TODO mock data for users:
//username, images, member since, User statement, report history/clean-app history, friends list
