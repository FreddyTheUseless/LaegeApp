// * Packages
import 'package:flutter/material.dart';

class SelectButton extends StatelessWidget {
  const SelectButton({
    @required this.screenSize,
    @required this.icon,
    @required this.text,
    this.pressedDown,
  });

  final Size screenSize;
  final String text;
  final IconData icon;
  final Function pressedDown;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressedDown,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 0.0),
        width: screenSize.width * 0.8,
        height: screenSize.height * 0.17,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
              blurRadius: 6.0,
              color: Colors.black12,
              offset: Offset(0, 3),
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Hero(
              tag: text,
              child: Material(
                color: Colors.transparent,
                child: Text(
                  text,
                  style: TextStyle(
                    color: Color(0xFF6F909F),
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Icon(
              icon,
              size: 55,
              color: Color(0xFF6F909F),
            ),
          ],
        ),
      ),
    );
  }
}
