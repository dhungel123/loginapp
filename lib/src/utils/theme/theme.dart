import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTheme{
  CustomTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    brightness: Brightness.light,
    textTheme: TextTheme(

      headlineLarge: GoogleFonts.montserrat(
        color: Colors.black
      ),
      headlineMedium: GoogleFonts.montserrat(
        color: Colors.black
      ),
      
      titleLarge: GoogleFonts.montserrat(
        color: Colors.black
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(style: ElevatedButton.styleFrom())
  );


  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: TextTheme(

        headlineLarge: GoogleFonts.montserrat(
            color: Colors.white
        ),
        titleLarge: GoogleFonts.montserrat(
            color: Colors.white
        )
    )
  );

}