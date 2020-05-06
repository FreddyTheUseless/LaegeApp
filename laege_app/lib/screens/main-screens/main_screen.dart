// * Packages
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
// * Components
import 'package:laege_app/components/launch_screen_components/top_app_title.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/main-screen';

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
        width: screenSize.width,
        height: screenSize.height,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            TopAppTitle(),
            SizedBox(height: screenSize.height * 0.1),
            SelectButton(
              screenSize: screenSize,
              icon: Icons.insert_invitation,
              text: 'Aftaler',
              pressedDown: () {},
            ),
            SizedBox(height: screenSize.height * 0.1),
            SelectButton(
              screenSize: screenSize,
              icon: Icons.folder_shared,
              text: 'Rapport fra læger',
              pressedDown: () {},
            ),
          ],
        ),
      ),
    );
  }
}

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
              blurRadius: 2.0,
              color: Colors.black12,
              offset: Offset(0, 2),
              spreadRadius: 2.0,
            ),
          ],
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              text,
              style: TextStyle(
                color: Color(0xFF6F909F),
                fontSize: 20.0,
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
