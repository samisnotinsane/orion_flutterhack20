import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:orion_flutterhack20/src/models/report.dart';
import 'package:orion_flutterhack20/src/styles.dart';
import 'package:orion_flutterhack20/src/widgets/retro_button.dart';

import 'camera_app.dart';
import '../mock_data.dart';

class AddScreen extends StatefulWidget {
  static const String id = '/add_screen';
  AddScreen({@required this.rearCam});

  final CameraDescription rearCam;

  @override
  _AddScreenState createState() => _AddScreenState();
}

class _AddScreenState extends State<AddScreen> {
  Report _newReport;
  String _title;
  String _locationCategory;

  @override
  void initState() {
    super.initState();
    var rnd = new Random();
    _newReport = Report(
      id: 'r-${rnd.nextInt(1000)}',
      karma: 50,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.primaryColorAlt,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text(
                    'Found a mess?',
                    style: Styles.retroTitle,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Image.asset(
                    'assets/leaf-illustration.png',
                    height: 200.0,
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 26.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Image:',
                          style: Styles.retroSubTitle,
                        ),
                        GestureDetector(
                          onTap: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CameraApp(
                                  camera: widget.rearCam,
                                  report: _newReport,
                                ),
                              ),
                            );
                            print('${_newReport.imagePath}');
                            setState(() {});
                          },
                          child: Container(
                            margin: EdgeInsets.all(20),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(8.0),
                              ),
                              border: Border.all(
                                  width: 2, color: Styles.primaryColorContrast),
                            ),
                            child: Icon(
                              Icons.add,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    // Show image taken with camera
                    _showCamImage(),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      onChanged: (textValue) {
                        _title = textValue;
                      },
                      decoration: InputDecoration(
                        labelText: 'Title',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Styles.primaryColorContrast,
                            width: 3.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Styles.primaryColor,
                            width: 5.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    TextField(
                      onChanged: (textValue) {
                        _locationCategory = textValue;
                      },
                      decoration: InputDecoration(
                        labelText: 'e.g. park, beach, etc',
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Styles.primaryColorContrast,
                            width: 3.0,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Styles.primaryColor,
                            width: 5.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    ButtonTheme(
                      minWidth: 200.0,
                      height: 50.0,
                      child: RetroButton(
                        title: 'Report',
                        onPressed: () async {
                          // TODO: report submit.
                          _newReport.title = _title;
                          _newReport.details = 'Dynamic report';

                          Position pos = await getLocationData();
                          LatLng latLng = LatLng(pos.latitude, pos.longitude);
                          print('Creating new report in position $latLng');

                          _newReport.position = latLng;

                          // every new report has karma: 50
                          // Add to mockdata card pile
                          data.addReportToTop(_newReport);
                          setState(() {});
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<Position> getLocationData() async {
    final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
    return geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
  }

  Widget _showCamImage() {
    if (_newReport.imagePath != null) {
      return Image.file(
        File(_newReport.imagePath),
      );
    }
    return SizedBox(
      height: 1.0,
    );
  }
}
