// * Packages
import 'package:flutter/material.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({
    @required this.screenSize,
    @required this.onTap,
  });

  final Size screenSize;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenSize.width * 0.75,
        height: screenSize.height * 0.075,
        decoration: BoxDecoration(
          color: Color(0xFF7D8679),
          borderRadius: BorderRadius.circular(40.0),
        ),
        child: Center(
          child: Text(
            'Opret profil',
            style: TextStyle(
              fontFamily: "Helvetica Neue",
              fontWeight: FontWeight.w700,
              fontSize: 35,
              color: Color(0xffffffff),
            ),
          ),
        ),
      ),
    );
  }
}
