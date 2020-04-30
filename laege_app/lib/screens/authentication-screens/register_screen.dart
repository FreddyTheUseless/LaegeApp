// * Packages
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// * Components
import '../../components/launch_screen_components/top_app_title.dart';
import '../../components/register_screen_components/register_screen_text.dart';
import '../../components/register_screen_components/register_text_field.dart';
import '../../components/register_screen_components/register_button.dart';

class RegisterScreen extends StatelessWidget {
  static const routeName = '/register-screen';

  TextEditingController cprController;
  TextEditingController tlfController;
  TextEditingController usrController;
  TextEditingController pwController;

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
              controller: cprController,
            ),
            SizedBox(height: screenSize.height * 0.03),
            RegisterTextField(
              screenSize: screenSize,
              keyboardType: TextInputType.number,
              labelText: 'Tlf-Nummer',
              maxLength: 8,
              controller: tlfController,
            ),
            SizedBox(height: screenSize.height * 0.03),
            RegisterTextField(
              screenSize: screenSize,
              keyboardType: TextInputType.text,
              labelText: 'Brugernavn',
              maxLength: 20,
              controller: usrController,
            ),
            SizedBox(height: screenSize.height * 0.03),
            RegisterTextField(
              screenSize: screenSize,
              keyboardType: TextInputType.text,
              labelText: 'Adgangskode',
              maxLength: 20,
              obscureText: true,
              controller: pwController,
            ),
            SizedBox(height: screenSize.height * 0.2),
            RegisterButton(
              screenSize: screenSize,
              onTap: () {
                // * Do something
                print('CPR:' + cprController.text);
                print('Tlf:' + tlfController.text);
                print('User:' + usrController.text);
                print('Password:' + pwController.text);
              },
            ),
          ],
        ),
      ),
    );
  }
}
