import 'package:flutter/material.dart';

class Routes {
  static void transition(context, Widget screen, [Duration? duration]) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => screen));
  }

  static void back(context, [Duration? duration]) {
    Navigator.pop(context, true);
  }
}
