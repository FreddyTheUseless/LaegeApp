// * Packages
import 'package:flutter/material.dart';

class RegisterTextField extends StatelessWidget {
  const RegisterTextField({
    @required this.screenSize,
    @required this.labelText,
    @required this.maxLength,
    @required this.keyboardType,
    @required this.controller,
    this.obscureText = false,
  });

  final Size screenSize;
  final String labelText;
  final int maxLength;
  final TextInputType keyboardType;
  final bool obscureText;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: screenSize.width * 0.8,
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3,
            ),
          ),
          hintText: labelText,
          counterText: "",
          hintStyle: TextStyle(color: Colors.white, fontSize: 22.0),
        ),
        keyboardType: keyboardType,
        keyboardAppearance: Brightness.light,
        cursorColor: Colors.white,
        style: TextStyle(color: Colors.white, fontSize: 22.0),
        maxLength: maxLength,
        obscureText: obscureText,
      ),
    );
  }
}
