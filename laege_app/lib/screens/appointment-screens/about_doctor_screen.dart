// * Packages
import 'package:flutter/material.dart';
import 'package:laege_app/components/doctor_components/request_meeting_button.dart';
import 'package:laege_app/components/doctor_components/top_doctor_name.dart';
import 'package:laege_app/components/launch_screen_components/top_app_title.dart';

class AboutDoctorScreen extends StatelessWidget {
  AboutDoctorScreen({this.doctorName});

  final String doctorName;

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 20.0),
        width: screenSize.width,
        height: screenSize.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TopAppTitle(),
            TopDoctorName(doctorName: doctorName),
            SizedBox(height: screenSize.height * 0.1),
            RequestMeetingButton(screenSize: screenSize),
            SizedBox(height: screenSize.height * 0.1),
            Row(
              children: <Widget>[
                Text(
                  'Aftaler',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF6F909F),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
