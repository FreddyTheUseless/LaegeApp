// * Packages
import 'package:flutter/material.dart';
import 'package:laege_app/components/launch_screen_components/top_app_title.dart';

class AboutDoctorScreen extends StatelessWidget {
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Hello World',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
