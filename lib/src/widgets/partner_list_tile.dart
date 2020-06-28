import 'package:flutter/material.dart';

import '../models/partner.dart';
import './retro_button.dart';

class PartnerListTile extends StatelessWidget {
  final Partner partner;
  final int karma;

  PartnerListTile({this.partner, this.karma});

  Widget build(context) => Container(
        margin: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(5)),
        child: ListTile(
            leading: Icon(Icons.fastfood),
            title: Text(partner.name),
            subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(partner.details),
                  Text("${partner.cost} karma")
                ]),
            isThreeLine: true,
            trailing: partner.cost < karma
                ? RetroButton(title: "CLAIM", onPressed: null)
                : null),
      );
}
