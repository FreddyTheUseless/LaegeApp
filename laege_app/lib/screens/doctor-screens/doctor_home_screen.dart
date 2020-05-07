// * Packages
import 'package:flutter/material.dart';
// * Components
import 'package:laege_app/components/launch_screen_components/top_app_title.dart';
import 'package:laege_app/components/main_screen_components/appointment_title.dart';
import 'package:laege_app/components/main_screen_components/doctor_appointment.dart';
// * Screens
import './about_patient_screen.dart';

class DoctorHomeScreen extends StatelessWidget {
  static const routeName = '/doctor-home-screen';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        width: screenSize.width,
        height: screenSize.height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TopAppTitle(),
            AppointmentTitle(),
            SizedBox(height: screenSize.height * 0.1),
            DoctorAppointment(
              screenSize: screenSize,
              imageUrl:
                  'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png',
              name: 'Gustav Walker Petersen',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AboutPatientScreen(
                          patientName: 'Gustav Walker Petersen',
                        )));
              },
            ),
            SizedBox(height: screenSize.height * 0.03),
            DoctorAppointment(
              screenSize: screenSize,
              imageUrl:
                  'https://cdn.business2community.com/wp-content/uploads/2017/08/blank-profile-picture-973460_640.png',
              name: 'Fake Fakesen',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AboutPatientScreen(
                          patientName: 'Fake Fakesen',
                        )));
              },
            ),
            SizedBox(height: screenSize.height * 0.03),
            DoctorAppointment(
              screenSize: screenSize,
              imageUrl:
                  'https://soundvenue.com/wp-content/uploads/2016/09/Daniel-Craig-James-Bond-640x640.jpg',
              name: 'James Bond',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AboutPatientScreen(
                          patientName: 'James Bond',
                        )));
              },
            ),
            SizedBox(height: screenSize.height * 0.03),
            DoctorAppointment(
              screenSize: screenSize,
              imageUrl:
                  'https://vignette.wikia.nocookie.net/harrypotter/images/9/97/Harry_Potter.jpg/revision/latest?cb=20150811193929&path-prefix=da',
              name: 'Harry James Potter',
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AboutPatientScreen(
                          patientName: 'Harry James Potter',
                        )));
              },
            ),
          ],
        ),
      ),
    );
  }
}
