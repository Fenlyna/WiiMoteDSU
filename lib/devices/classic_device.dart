import 'package:flutter/material.dart';
import 'package:wiimote_dsu/devices/device.dart';
import 'package:wiimote_dsu/server/dsu_server.dart';
import 'package:wiimote_dsu/ui/layouts/classic_control_layout.dart';
import 'package:wiimote_dsu/ui/layouts/wii_mote_layout.dart';

class ClassicDevice extends Device {
  static const name = "ClassicLayout";

  @override
  String get deviceName => name;

  @override
  Widget getButtonLayout() {
    return ClassicLayout();
  }

  ClassicDevice(DSUServer server) : super(server);
}
