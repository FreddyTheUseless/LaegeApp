// * Packages
import 'package:flutter/material.dart';
// * Screens
import './screens/authentication-screens/launch_screen.dart';
import './screens/authentication-screens/register_screen.dart';
import './screens/authentication-screens/login_screen.dart';
import './screens/main-screens/main_screen.dart';
import './screens/main-screens/appointment_screen.dart';
import './screens/main-screens/rapport_screen.dart';
import './screens/main-screens/rapport_screen_all.dart';
import './screens/doctor-screens/doctor_home_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laege App',
      debugShowCheckedModeBanner: false,
      initialRoute: LaunchScreen.routeName,
      theme: ThemeData.dark(),
      routes: {
        LaunchScreen.routeName: (context) => LaunchScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
        LoginScreen.routeName: (context) => LoginScreen(),
        MainScreen.routeName: (context) => MainScreen(),
        AppointmentScreen.routeName: (context) => AppointmentScreen(),
        RapportScreen.routeName: (context) => RapportScreen(),
        RapportScreenAll.routeName: (context) => RapportScreenAll(),
        DoctorHomeScreen.routeName: (context) => DoctorHomeScreen(),
      },
    );
  }
}
