// * Packages
import 'package:flutter/material.dart';
// * Components
import 'package:laege_app/components/launch_screen_components/top_app_title.dart';
import 'package:laege_app/components/main_screen_components/appointment_title.dart';
import 'package:laege_app/components/main_screen_components/doctor_appointment.dart';

class AppointmentScreen extends StatelessWidget {
  static const routeName = '/Apointment-screen';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        color: Colors.white,
        width: screenSize.width,
        height: screenSize.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TopAppTitle(),
            AppointmentTitle(),
            SizedBox(height: screenSize.height * 0.1),
            DoctorAppointment(
              screenSize: screenSize,
              name: 'Mie Xing',
              imageUrl:
                  'https://cdn.pixabay.com/photo/2017/01/29/21/16/nurse-2019420_960_720.jpg',
            ),
            SizedBox(height: screenSize.height * 0.05),
            DoctorAppointment(
              screenSize: screenSize,
              name: 'Mads Sørensen',
              imageUrl:
                  'https://cdn.pixabay.com/photo/2017/05/23/17/12/doctor-2337835_960_720.jpg',
            ),
            SizedBox(height: screenSize.height * 0.05),
            DoctorAppointment(
              screenSize: screenSize,
              name: 'Sarah Jensen',
              imageUrl:
                  'https://cdn.pixabay.com/photo/2019/12/06/13/40/anesthesia-4677401_960_720.jpg',
            ),
          ],
        ),
      ),
    );
  }
}
