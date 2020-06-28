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
              child: Column(
                children: [
                  Text(
                    "Verified Tidier",
                    style: Styles.retroTitle,
                  ),
                  Container(height: 20),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Icon(Icons.verified_user,
                        size: 50, color: Colors.brown[300]),
                    Text(
                      "$currentKarma₭",
                      style: TextStyle(fontSize: 32),
                    )
                  ]),
                  Container(height: 20),
                  Container(
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: LinearPercentIndicator(
                        percent: 0.6,
                        lineHeight: 30,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        progressColor: Styles.primaryColor,
                        center: Text("150 / 200"),
                      )),
                  Container(height: 10),
                  Text(
                    "Next Badge: Super Cleaner",
                    style: Styles.retroSubTitle,
                  ),
                ],
              ),
            ),
          ),
        ),
        Positioned(
            top: MediaQuery.of(context).size.height * 0.40,
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Styles.primaryColorAlt,
              ),
              child: ListView.builder(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  itemCount: _partners.length,
                  itemBuilder: (context, index) => PartnerListTile(
                      partner: _partners[index], karma: currentKarma)),
            ))
      ]);
}
