import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget mainText(String text, Color color) {
  return Text(
    text,
    style: GoogleFonts.roboto(
        color: color, fontSize: 28, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}

Widget simpleText(String text, Color color) {
  return Text(
    text,
    style: GoogleFonts.roboto(
      color: color,
      fontSize: 16,
    ),
  );
}
