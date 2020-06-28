import 'package:flutter/material.dart';

List<String> stuff = ["mcdonals", "kfc"];

class RedeemScreen extends StatelessWidget {
  Widget build(context) => Stack(children: [
        Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0, 1],
                    colors: [Color(0xffE474D5), Color(0xff79D8FA)]))),
        Positioned(
            top: 100,
            child: Center(
                // padding: EdgeInsets.only(top: 50),
                child: Column(children: [Text("hey")]))),
        Positioned(
            bottom: 0,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: ListView.builder(
                  itemCount: stuff.length,
                  itemBuilder: (context, index) {
                    return ListTile(title: Text(stuff[index]));
                  }),
            ))
      ]);
}
