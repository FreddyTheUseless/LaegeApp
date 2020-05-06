// * Packages
import 'package:flutter/material.dart';

class RequestMeetingButton extends StatelessWidget {
  const RequestMeetingButton({
    @required this.screenSize,
  });

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: screenSize.width,
        height: screenSize.height * 0.08,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25.0),
          boxShadow: [
            BoxShadow(
              blurRadius: 6.0,
              color: Colors.black12,
              offset: Offset(0, 3),
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Center(
          child: Text(
            'Anmod om aftale',
            style: TextStyle(
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF6F909F),
            ),
          ),
        ),
      ),
    );
  }
}
