import 'package:flutter/material.dart';
import 'package:wiimote_dsu/ui/buttons/button_round.dart';

class ABXYButtons extends StatelessWidget {
  final double width;
  final double height;

  const ABXYButtons(
      {Key key, this.width = 1.0 * 45.0, this.height = 2.5 * 45.0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            Positioned(
              left: width * 0.5 - 0.125 * width,
              top: 0,
              child: PadRoundButton(
                  btnType: "X", width: 0.25 * width, height: height / 3.5),
            ),
            Positioned(
              left: 0,
              top: height * 0.5 - 0.125 * height,
              child: PadRoundButton(
                  btnType: "Y", width: 0.4 * width, height: height / 3.5),
            ),
            Positioned(
              right: 0,
              top: height * 0.5 - 0.135 * height,
              child: PadRoundButton(
                  btnType: "A", width: 0.4 * width, height: height / 3.5),
            ),
            Positioned(
              bottom: 0,
              left: width * 0.5 - 0.125 * width,
              child: PadRoundButton(
                  btnType: "B", width: 0.25 * width, height: height / 3.5),
            ),
          ],
        ));
  }
}
