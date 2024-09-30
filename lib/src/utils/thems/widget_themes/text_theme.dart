import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: GoogleFonts.monofett(
      color: Colors.black87,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.deepPurple,
      fontSize: 24,
    ),
  );

  static TextTheme darkTextTheme = TextTheme(
    displayMedium: GoogleFonts.monofett(
      color: Colors.white70,
    ),
    titleSmall: GoogleFonts.poppins(
      color: Colors.white60,
      fontSize: 24,
    ),
  );
}
