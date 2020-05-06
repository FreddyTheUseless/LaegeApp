// * Packages
import 'package:flutter/material.dart';

class TopDoctorName extends StatelessWidget {
  const TopDoctorName({
    @required this.doctorName,
  });

  final String doctorName;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          doctorName,
          style: TextStyle(
            color: Color(0xFF767676),
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
