// * Packages
import 'package:flutter/material.dart';
// * Components
import 'package:laege_app/components/launch_screen_components/top_app_title.dart';
import 'package:laege_app/components/login_screen_components/login_button.dart';
import 'package:laege_app/components/login_screen_components/login_screen_text.dart';
import 'package:laege_app/components/register_screen_components/register_text_field.dart';
import 'package:laege_app/screens/doctor-screens/doctor_home_screen.dart';
// * Screens
import '../main-screens/main_screen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login-screen';

  TextEditingController cprController = TextEditingController();
  TextEditingController usrController = TextEditingController();
  TextEditingController pwController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
            SizedBox(height: screenSize.height * 0.05),
            LoginScreenText(),
            SizedBox(height: screenSize.height * 0.15),
            RegisterTextField(
              screenSize: screenSize,
              keyboardType: TextInputType.number,
              labelText: 'CPR-Nummer',
              maxLength: 10,
              textController: cprController,
            ),
            SizedBox(height: screenSize.height * 0.03),
            RegisterTextField(
              screenSize: screenSize,
              keyboardType: TextInputType.text,
              labelText: 'Brugernavn',
              maxLength: 20,
              textController: usrController,
            ),
            SizedBox(height: screenSize.height * 0.03),
            RegisterTextField(
              screenSize: screenSize,
              keyboardType: TextInputType.text,
              labelText: 'Adgangskode',
              maxLength: 20,
              obscureText: true,
              textController: pwController,
            ),
            SizedBox(height: screenSize.height * 0.2),
            LoginButton(
              screenSize: screenSize,
              onTap: () {
                // * Do something
                print('CPR:' + cprController.text);
                print('User:' + usrController.text);
                print('Password:' + pwController.text);
                if (pwController.text.toLowerCase() == 'freddy') {
                  Navigator.pushReplacementNamed(context, DoctorHomeScreen.routeName);
                }
                Navigator.pushReplacementNamed(context, MainScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
