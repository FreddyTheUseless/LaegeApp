// * Packages
import 'package:flutter/material.dart';
// * Screens
import './screens/authentication-screens/launch_screen.dart';
import './screens/authentication-screens/register_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laege App',
      debugShowCheckedModeBanner: false,
      initialRoute: RegisterScreen.routeName,
      routes: {
        LaunchScreen.routeName: (context) => LaunchScreen(),
        RegisterScreen.routeName: (context) => RegisterScreen(),
      },
    );
  }
}
