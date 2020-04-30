// * Packages
import 'package:flutter/material.dart';

class TopAppTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          'MDoctor',
          style: TextStyle(
            fontFamily: "Helvetica Neue",
            fontWeight: FontWeight.w700,
            fontSize: 35,
            color: Color(0xff95cfdd),
          ),
        ),
      ],
    );
  }
}