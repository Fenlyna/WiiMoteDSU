import 'package:flutter/material.dart';
import 'package:flutter_joystick/flutter_joystick.dart';
import 'package:provider/provider.dart';
import 'package:wiimote_dsu/server/dsu_server.dart';

const ballSize = 20.0;
const step = 0.1;

class JoystickRight extends StatelessWidget {
  final String btnType;
  final String btnType2;

  final double width;
  final double height;

  JoystickMode _joystickMode = JoystickMode.all;
  JoystickRight({
    this.btnType = "_RY",
    this.btnType2 = "_RX",
    this.width = 1.0 * 180.0,
    this.height = 1.0 * 180.0,
  });
  double x = 0;
  double y = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Container(
            color: Colors.white,
          ),
          Align(
            alignment: const Alignment(0, 0.8),
            child: Joystick(
              mode: _joystickMode,
              listener: (details) {
                x = 1 * details.x;
                y = 1 * details.y;

                context.read<DSUServer>().slots[0].setState(btnType, x.round());
                context
                    .read<DSUServer>()
                    .slots[0]
                    .setState(btnType2, y.round());
              },
            ),
          ),
        ],
      ),
    );
  }
}
