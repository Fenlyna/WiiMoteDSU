import 'package:flutter/material.dart';
import 'package:wiimote_dsu/ui/buttons/button_round.dart';

class ResetButton extends StatelessWidget {
  final double width;
  final double height;

  const ResetButton({Key key, this.width = 4.0 * 30, this.height = 1.0 * 30})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        PadRoundButton(
            icon: Icons.refresh_outlined,
            btnType: "RESET",
            width: width / 3,
            height: height),
      ],
    );
  }
}
