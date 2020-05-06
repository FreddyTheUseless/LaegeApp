// * Packages
import 'package:flutter/material.dart';
// * Components
import 'package:laege_app/components/launch_screen_components/top_app_title.dart';
import 'package:laege_app/components/main_screen_components/appointment_title.dart';

class RapportScreen extends StatelessWidget {
  static const routeName = '/rapport-screen';

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
                    Text(
                      'Seneste',
                      style: TextStyle(
                        fontFamily: "Helvetica Neue",
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                        color: Color(0xffadadad),
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
            RapportWidget(
              screenSize: screenSize,
              appointmentTitle: 'Corona Tjek',
              date: '29. April / 2020',
              url:
                  'https://cdn.pixabay.com/photo/2017/05/23/17/12/doctor-2337835_960_720.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class RapportWidget extends StatelessWidget {
  const RapportWidget({
    @required this.screenSize,
    this.appointmentTitle,
    this.date,
    this.url,
  });

  final Size screenSize;
  final String appointmentTitle;
  final String date;
  final String url;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 20.0),
      width: screenSize.width,
      height: screenSize.height * 0.1,
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
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                appointmentTitle,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF808080),
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFAFAFAF),
                ),
              ),
            ],
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              url,
            ),
            radius: 30.0,
          ),
        ],
      ),
    );
  }
}
