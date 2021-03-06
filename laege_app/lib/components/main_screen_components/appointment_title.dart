// * Packages
import 'package:flutter/material.dart';

class AppointmentTitle extends StatelessWidget {

  AppointmentTitle({
    this.title = 'Aftaler',
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Hero(
          tag: 'Aftaler',
          child: Material(
            color: Colors.transparent,
            child: Text(
              title,
              style: TextStyle(
                fontSize: 23.0,
                color: Color(0xFF6F909F),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
