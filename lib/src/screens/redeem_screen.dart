import 'package:flutter/material.dart';
import 'package:orion_flutterhack20/src/models/partner.dart';

import '../mock_data.dart';
import '../widgets/partner_list_tile.dart';
import '../styles.dart';

class RedeemScreen extends StatelessWidget {
  final List<Partner> _partners = MockData().partners;

  Widget build(context) => Stack(children: [
        Container(
          color: Styles.primaryColorAlt,
          // decoration: BoxDecoration(
          //     gradient: LinearGradient(
          //         begin: Alignment.topRight,
          //         end: Alignment.bottomLeft,
          //         stops: [0, 1],
          //         colors: [Color(0xffE474D5), Color(0xff79D8FA)]))
        ),
        Positioned(
            top: 100,
            child: Container(
                height: MediaQuery.of(context).size.height * 0.7 - 100,
                width: MediaQuery.of(context).size.width,
                child: Center(
                    child: Column(children: [
                  Text("2345 karma"),
                  Divider(height: 50, color: Styles.primaryColorAlt),
                  Text("12 doollar saved"),
                  Divider(height: 50, color: Styles.primaryColorAlt),
                  Text("???")
                ])))),
        Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: ListView.builder(
                  itemCount: _partners.length,
                  itemBuilder: (context, index) =>
                      PartnerListTile(partner: _partners[index])),
            ))
      ]);
}
