// * Packages
import 'package:flutter/material.dart';
// * Components
import 'package:laege_app/components/launch_screen_components/top_app_title.dart';
import '../../components/main_screen_components/select_button.dart';
// * Screens
import './appointment_screen.dart';
import './rapport_screen.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/main-screen';

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
            SizedBox(height: screenSize.height * 0.1),
            SelectButton(
              screenSize: screenSize,
              icon: Icons.insert_invitation,
              text: 'Aftaler',
              pressedDown: () {
                Navigator.pushNamed(context, AppointmentScreen.routeName);
              },
            ),
            SizedBox(height: screenSize.height * 0.1),
            SelectButton(
              screenSize: screenSize,
              icon: Icons.folder_shared,
              text: 'Rapport fra læger',
              pressedDown: () {
                Navigator.pushNamed(context, RapportScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
