import 'package:flutter/material.dart';
import 'package:orion_flutterhack20/src/screens/report_job.dart';

import '../constants.dart';
import '../styles.dart';

class UserStatus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        
        UnimplementedError('Account screen is not yet implemented');
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                'samisnotinsane',
                style: Styles.userStatusName,
              ),
              Text(
                '1150 karma',
                style: Styles.userStatusPoints,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 5.0),
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage(kUserProfilePicImageUrl),
            ),
          ),
        ],
      ),
    );
  }
}
