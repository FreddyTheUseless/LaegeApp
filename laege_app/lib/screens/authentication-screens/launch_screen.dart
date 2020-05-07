// * Packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// * Components
import '../../components/launch_screen_components/top_app_title.dart';
import '../../components/launch_screen_components/launch_screen_text.dart';
import '../../components/launch_screen_components/launch_screen_button.dart';
// * Screens
import './register_screen.dart';
import './login_screen.dart';

class LaunchScreen extends StatelessWidget {
  static const routeName = '/launch-screen';

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/images/baggrund.png',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TopAppTitle(),
            SizedBox(height: screenSize.height * 0.12),
            LaunchScreenText(),
            SizedBox(height: screenSize.height * 0.4),
            LaunchScreenButton(
              screenSize: screenSize,
              backgroundColor: Color(0x49747474),
              text: 'Log in',
              textColor: Color(0xffffffff),
              onTap: () {
                Navigator.pushNamed(context, LoginScreen.routeName);
              },
            ),
            SizedBox(height: screenSize.height * 0.025),
            LaunchScreenButton(
              screenSize: screenSize,
              backgroundColor: Color(0xffffffff),
              text: 'Opret bruger',
              textColor: Color(0xff95CFDD),
              onTap: () {
                Navigator.pushNamed(context, RegisterScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
