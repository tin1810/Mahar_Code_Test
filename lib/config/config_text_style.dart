import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConfigTextStyle {
  static boldTextStyle(
    double? size,
    Color? color,
  ) {
    return GoogleFonts.poppins(
        color: color, fontSize: size, fontWeight: FontWeight.w500);
  }
   static regularTextStyle(
    double? size,
    Color? color,
  ) {
    return GoogleFonts.poppins(
        color: color, fontSize: size, fontWeight: FontWeight.w400);
  }
}
