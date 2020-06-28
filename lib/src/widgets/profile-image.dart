import 'package:flutter/material.dart';
import 'package:orion_flutterhack20/src/models/users.dart';
import 'package:orion_flutterhack20/src/screens/account.dart';

import '../mock_data.dart';

class ProfileImage extends StatelessWidget {
  final Users userImage;
  final int userNumber;
  ProfileImage({this.userImage, this.userNumber});

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => Account(user: MockData().user[userNumber])),
        );
      },
      child: Column(
        children: <Widget>[
          Text(userImage.username),
          SizedBox(height: 10),
          Container(
            width: 70,
            height: 70,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  image: NetworkImage(
                      userImage.imageURL),
                  fit: BoxFit.fill),
            ),
          ),
        ],
      ),
    );
  }
}
