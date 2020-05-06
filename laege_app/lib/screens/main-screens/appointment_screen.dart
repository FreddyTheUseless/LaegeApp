// * Packages
import 'package:flutter/material.dart';
// * Components
import 'package:laege_app/components/launch_screen_components/top_app_title.dart';

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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text('Aftaler')
              ],
            )
          ],
        ),
      ),
    );
  }
}
