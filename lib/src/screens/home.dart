import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import './map_screen.dart';

class Home extends StatefulWidget {
  final Position devicePosition;

  Home({@required this.devicePosition});

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  List<Widget> _tabs;

  void initState() {
    super.initState();
    _tabs = [
      MapScreen(devicePosition: widget.devicePosition),
      Text("hey"),
      Text("woah")
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _tabs[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            title: Text(''),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            title: Text('Redeem'),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
