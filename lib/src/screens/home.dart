import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:orion_flutterhack20/src/screens/add_screen.dart';
import 'package:camera/camera.dart';

import '../styles.dart';
import './map_screen.dart';

class Home extends StatefulWidget {
  final Position devicePosition;
  final CameraDescription rearCam;

  Home({
    @required this.devicePosition,
    @required this.rearCam,
  });

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
      AddScreen(rearCam: widget.rearCam, saveReport: () => saveReport()),
      Text("woah")
    ];
  }

  void saveReport() {
    _onItemTapped(0);
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
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        backgroundColor: Styles.primaryColorAlt,
        selectedItemColor: Styles.primaryColorContrast,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            title: Text('Add'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            title: Text('Redeem'),
          ),
        ],
      ),
    );
  }
}
