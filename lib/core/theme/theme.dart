import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TeamBeyTheme {
  static ThemeData defaultTheme() {
    return ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.teal, brightness: Brightness.dark),
      useMaterial3: true,
    );
  }
}
