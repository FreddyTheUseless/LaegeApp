// * Packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// * Components
import '../../components/launch_screen_components/top_app_title.dart';
import '../../components/register_screen_components/register_screen_text.dart';
import '../../components/register_screen_components/register_text_field.dart';
import '../../components/register_screen_components/register_button.dart';
// * Screens
import '../main-screens/main_screen.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = '/register-screen';

  TextEditingController cprController = TextEditingController();
  TextEditingController tlfController = TextEditingController();
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
            RegisterScreenText(),
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
              keyboardType: TextInputType.number,
              labelText: 'Tlf-Nummer',
              maxLength: 8,
              textController: tlfController,
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
            SizedBox(height: screenSize.height * 0.17),
            RegisterButton(
              screenSize: screenSize,
              onTap: () {
                // * Do something
                print('CPR:' + cprController.text);
                print('Tlf:' + tlfController.text);
                print('User:' + usrController.text);
                print('Password:' + pwController.text);
                Navigator.pushReplacementNamed(context, MainScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
