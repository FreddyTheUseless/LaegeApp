// * Packages
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// * Components
import 'package:laege_app/components/doctor_components/request_meeting_button.dart';
import 'package:laege_app/components/doctor_components/top_doctor_name.dart';
import 'package:laege_app/components/launch_screen_components/top_app_title.dart';
// * Screens
import 'package:laege_app/screens/doctor-screens/call_screen.dart';

class AboutPatientScreen extends StatelessWidget {
  AboutPatientScreen({
    this.patientName,
  });

  final String patientName;

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
            TopDoctorName(doctorName: patientName),
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
            SizedBox(height: screenSize.height * 0.02),
            AppointmentWidget(
              screenSize: screenSize,
              appointmentTitle: 'Corona Tjek',
              date: '15:10 - 6. Maj / 2020',
              patientName: patientName,
            ),
          ],
        ),
      ),
    );
  }
}

class AppointmentWidget extends StatelessWidget {
  const AppointmentWidget({
    @required this.screenSize,
    this.appointmentTitle,
    this.date,
    this.patientName,
  });

  final Size screenSize;
  final String appointmentTitle;
  final String date;
  final String patientName;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 10.0),
      width: screenSize.width,
      height: screenSize.height * 0.075,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 6.0,
            color: Colors.black12,
            offset: Offset(0, 3),
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                appointmentTitle,
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF808080),
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFAFAFAF),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              // * GO To Call Screen
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (BuildContext context) =>
                      new CallScreen(patientName),
                ),
              );
            },
            child: Icon(
              CupertinoIcons.video_camera_solid,
              size: 50,
              color: Color(0xFF6F909F),
            ),
          )
        ],
      ),
    );
  }
}
