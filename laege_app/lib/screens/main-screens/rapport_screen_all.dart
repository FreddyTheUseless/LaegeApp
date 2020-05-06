// * Packages
import 'package:flutter/material.dart';
// * Components
import 'package:laege_app/components/launch_screen_components/top_app_title.dart';
import 'package:laege_app/components/main_screen_components/appointment_title.dart';
import 'package:laege_app/components/main_screen_components/doctor_appointment.dart';
// * Screens
import 'package:laege_app/screens/main-screens/rapport_screen.dart';

class RapportScreenAll extends StatelessWidget {
  static const routeName = '/all-rapport-screen';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                AppointmentTitle(
                  title: 'Rapport',
                ),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                            context, RapportScreen.routeName);
                      },
                      child: Text(
                        'Seneste',
                        style: TextStyle(
                          fontFamily: "Helvetica Neue",
                          fontWeight: FontWeight.w700,
                          fontSize: 20,
                          color: Color(0xffadadad),
                        ),
                      ),
                    ),
                    SizedBox(width: screenSize.width * 0.01),
                    Container(
                      width: screenSize.width * 0.13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xff6f909f),
                      ),
                      child: Center(
                        child: Text(
                          'Alle',
                          style: TextStyle(
                            fontFamily: "Helvetica Neue",
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            color: Color(0xffffffff),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: screenSize.height * 0.05),
            DoctorAppointment(
              screenSize: screenSize,
              name: 'Mie Xing',
              imageUrl:
                  'https://cdn.pixabay.com/photo/2017/01/29/21/16/nurse-2019420_960_720.jpg',
              onTap: () {},
            ),
            SizedBox(height: screenSize.height * 0.04),
            DoctorAppointment(
              screenSize: screenSize,
              name: 'Mads Sørensen',
              imageUrl:
                  'https://cdn.pixabay.com/photo/2017/05/23/17/12/doctor-2337835_960_720.jpg',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
