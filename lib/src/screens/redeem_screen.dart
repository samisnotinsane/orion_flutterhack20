import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../mock_data.dart';
import '../models/partner.dart';
import '../widgets/partner_list_tile.dart';
import '../styles.dart';

class RedeemScreen extends StatelessWidget {
  final List<Partner> _partners = MockData().partners;
  final int currentKarma = 46;

  Widget build(context) => Stack(children: [
        Container(color: Styles.primaryColorAlt),
        Positioned(
            top: 70,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.4 - 70,
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Column(children: [
                  Text("Verified Cleaner", style: TextStyle(fontSize: 32)),
                  Divider(height: 20, color: Styles.primaryColorAlt),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.verified_user,
                        size: 50, color: Colors.brown[300]),
                    Text("$currentKarma₭", style: TextStyle(fontSize: 32))
                  ]),
                  Divider(height: 20, color: Styles.primaryColorAlt),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: LinearPercentIndicator(
                        percent: 0.6,
                        lineHeight: 30,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: Colors.lime,
                        center: Text("150 / 200"),
                      )),
                  Divider(height: 10, color: Styles.primaryColorAlt),
                  Text("Next Badge: Super Cleaner")
                ])))),
        Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemCount: _partners.length,
                  itemBuilder: (context, index) => PartnerListTile(
                      partner: _partners[index], karma: currentKarma)),
            ))
      ]);
}
