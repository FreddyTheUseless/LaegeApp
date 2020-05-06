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
            SizedBox(height: screenSize.height * 0.02),
            AppointmentWidget(
              screenSize: screenSize,
              appointmentTitle: 'Corona Tjek',
              date: '15:10 - 6. Maj / 2020',
            ),
            SizedBox(height: screenSize.height * 0.025),
            AppointmentWidget(
              screenSize: screenSize,
              appointmentTitle: 'Ondt i benet',
              date: '07:45 - 17. Maj / 2020',
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
  });

  final Size screenSize;
  final String appointmentTitle;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
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
      child: Column(
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
    );
  }
}
