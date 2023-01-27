import 'package:flutter/material.dart';
import 'package:wiimote_dsu/ui/abxy_buttons.dart';
import 'package:wiimote_dsu/ui/dpad.dart';
import 'package:wiimote_dsu/ui/joystick_left.dart';
import 'package:wiimote_dsu/ui/joystick_right.dart';

class ClassicLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            JoystickLeft(
              height: screenSize.height * 0.9 / 3,
            ),
            SizedBox(
              height: screenSize.height * 0.1 / 3,
            ),
            RotatedBox(
              quarterTurns: 1,
              child: Dpad(
                width: screenSize.height * 0.5 / 3,
                height: screenSize.height * 0.5 / 3,
              ),
            ),
            SizedBox(
              height: screenSize.height * 0.1 / 3,
            ),
            RotatedBox(
              quarterTurns: 1,
              child: ABXYButtons(
                width: screenSize.height * 0.5 / 3,
                height: screenSize.height * 0.5 / 3,
              ),
            ),
            JoystickRight(
              height: screenSize.height * 0.9 / 3,
            ),
          ],
        ));
  }
}
