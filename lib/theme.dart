import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
  brightness: Brightness.light,
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.mulish(
      fontSize: 16,
      color: Color.fromARGB(255, 21, 21, 28),
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.mulish(
      fontSize: 14,
      color: Color.fromARGB(255, 21, 21, 28),
      fontWeight: FontWeight.w400,
    ),
    displayLarge: GoogleFonts.mulish(
      fontSize: 24,
      color: Color.fromARGB(255, 21, 21, 28),
      fontWeight: FontWeight.bold,
    ),
    // Add other text styles as needed
  ),
);

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.mulish(
      fontSize: 16,
      color: Color.fromARGB(255, 244, 241, 241),
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.mulish(
      fontSize: 14,
      color: Color.fromARGB(255, 244, 241, 241),
      fontWeight: FontWeight.w400,
    ),
    displayLarge: GoogleFonts.mulish(
      fontSize: 24,
      color: Color.fromARGB(255, 244, 241, 241),
      fontWeight: FontWeight.bold,
    ),
    // Add other text styles as needed
  ),
);
