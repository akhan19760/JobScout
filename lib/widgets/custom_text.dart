import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget customText(
    double fontSize, FontWeight fontWeight, Color color, String text) {
  return Text(text,
      style: GoogleFonts.dmSans(
          fontSize: fontSize, fontWeight: fontWeight, color: color));
}
