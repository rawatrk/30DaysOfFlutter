import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme{
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.purple,
      fontFamily: GoogleFonts.lato().fontFamily,
      // To set appBar theme to whole app
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0, // Avoid appBar shadow
        iconTheme: IconThemeData(color: Colors.black), // set icon color of appbar for visibility
        titleTextStyle: TextStyle(
            color: Colors.black,
            fontSize: 20
        ),
      )
  );

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      brightness: Brightness.dark
  );
}