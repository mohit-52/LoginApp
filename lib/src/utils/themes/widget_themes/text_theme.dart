import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MTextTheme {
  static TextTheme lighttextTheme = TextTheme(
    headline1: GoogleFonts.poppins(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
      fontSize: 50,
    ),
    headline2: GoogleFonts.roboto(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
      fontSize: 32,
    ),
    headline3: GoogleFonts.montserrat(
      color: Colors.black87,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
    subtitle1: GoogleFonts.poppins(
      color: Colors.black54,
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
    subtitle2: GoogleFonts.roboto(
      color: Colors.black54,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
    bodyText1: GoogleFonts.poppins(),
  );
  static TextTheme darktextTheme = TextTheme(
    headline1: GoogleFonts.poppins(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: 50,
    ),
    headline2: GoogleFonts.roboto(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: 40,
    ),
    headline3: GoogleFonts.montserrat(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    ),
    subtitle1: GoogleFonts.poppins(
      color: Colors.white70,
      fontSize: 24,
    ),
    subtitle2: GoogleFonts.roboto(
      color: Colors.white70,
      fontWeight: FontWeight.bold,
      fontSize: 18,
    ),
    bodyText1: GoogleFonts.poppins(),
  );
}
