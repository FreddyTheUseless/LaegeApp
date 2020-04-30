// * Packages
import 'package:flutter/material.dart';

class LaunchScreenText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(
      'Vælg hvordan du ville komme i gang',
      style: TextStyle(
        fontFamily: "Helvetica Neue",
        fontWeight: FontWeight.w700,
        fontSize: 35,
        color: Color(0xffffffff),
      ),
      textAlign: TextAlign.center,
    );
  }
}
