// * Packages
import 'package:flutter/material.dart';

class LaunchScreenButton extends StatelessWidget {
  const LaunchScreenButton({
    @required this.screenSize,
    @required this.onTap,
    @required this.textColor,
    @required this.text,
    @required this.backgroundColor,
  });

  final Size screenSize;
  final Function onTap;
  final Color textColor;
  final String text;
  final Color backgroundColor;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenSize.width * 0.78,
        height: screenSize.height * 0.08,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(25.0),
        ),
        child: Center(
          child: Text(
            text,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontFamily: "Helvetica Neue",
              fontWeight: FontWeight.w700,
              fontSize: 35,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}
