import 'package:dummy_json_api/app/themes/theme_data.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: GoogleFonts.poppins().fontFamily,
      scaffoldBackgroundColor: Colors.white,
      iconTheme: IconThemeData(color: Colors.black),
      inputDecorationTheme: lightInputDecoration,
      appBarTheme: appBarLightTheme,
      colorScheme: colorScheme,
      scrollbarTheme: scrollbarThemeData,
    );
  }
}
