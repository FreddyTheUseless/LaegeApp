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
                AppointmentTitle(title: 'Rapport',),
              ],
            )
          ],
        ),
      ),
    );
  }
}
