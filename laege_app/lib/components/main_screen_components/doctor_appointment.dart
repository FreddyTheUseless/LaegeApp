// * Packages
import 'package:flutter/material.dart';

class DoctorAppointment extends StatelessWidget {
  const DoctorAppointment({
    @required this.screenSize,
    this.name,
    this.imageUrl,
  });

  final Size screenSize;
  final String name;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
      width: screenSize.width,
      height: screenSize.height * 0.1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
          BoxShadow(
            blurRadius: 6.0,
            color: Colors.black26,
            offset: Offset(0, 3),
            spreadRadius: 2.0,
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
              fontSize: 20.0,
              color: Color(0xFF767676),
              fontWeight: FontWeight.w600,
            ),
          ),
          CircleAvatar(
            backgroundImage: NetworkImage(
              imageUrl,
            ),
            radius: 30.0,
          ),
        ],
      ),
    );
  }
}
