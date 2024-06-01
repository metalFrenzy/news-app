import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = ThemeData(
  cardColor: Colors.white,
  scaffoldBackgroundColor: Color.fromARGB(255, 247, 247, 247),
  brightness: Brightness.light,
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.mulish(
      fontSize: 18,
      color: Color.fromARGB(255, 21, 21, 28),
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.mulish(
      fontSize: 16,
      color: Color.fromARGB(255, 21, 21, 28),
      fontWeight: FontWeight.w400,
    ),
    displayLarge: GoogleFonts.mulish(
      fontSize: 24,
      color: Color.fromARGB(255, 21, 21, 28),
      fontWeight: FontWeight.bold,
    ),
     bodySmall: GoogleFonts.mulish(
      color: Color.fromARGB(255, 21, 21, 28),
      fontSize: 16,
      height: 1.5,
    ),
    displayMedium:GoogleFonts.mulish(
      color: Color.fromARGB(255, 21, 21, 28),
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ), 
    
  ),
);

final darkTheme = ThemeData(
  cardColor: Color.fromARGB(255, 46, 46, 46),
  scaffoldBackgroundColor: Color.fromARGB(255, 35, 35, 35),
  brightness: Brightness.dark,
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.mulish(
      fontSize: 18,
      color: Color.fromARGB(255, 244, 241, 241),
      fontWeight: FontWeight.w600,
    ),
    bodyMedium: GoogleFonts.mulish(
      fontSize: 16,
      color: Color.fromARGB(255, 244, 241, 241),
      fontWeight: FontWeight.w400,
    ),
    displayLarge: GoogleFonts.mulish(
      fontSize: 24,
      color: Color.fromARGB(255, 244, 241, 241),
      fontWeight: FontWeight.bold,
    ),
    bodySmall: GoogleFonts.mulish(
      color: Color.fromARGB(255, 244, 241, 241),
      fontSize: 16,
      height: 1.5,
    ),
    displayMedium:GoogleFonts.mulish(
      color: Color.fromARGB(255, 244, 241, 241),
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ), 
    
  ),
);
