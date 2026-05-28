import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';
import 'theme_data.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme() {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      fontFamily: GoogleFonts.poppins().fontFamily,
      primarySwatch: AppColors.primaryMaterialColor,
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.whiteColor,
      iconTheme: const IconThemeData(color: AppColors.blackColor),
      textTheme: const TextTheme(
        bodyMedium: TextStyle(
          color: AppColors.labelColor,
          fontSize: 14,
          fontWeight: FontWeight.w400,
        ),
      ),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColors.primaryColor,
        selectionColor: Colors.transparent,
        selectionHandleColor: Colors.transparent,
      ),
      elevatedButtonTheme: elevatedButtonTheme,
      textButtonTheme: textButtonThemeData,
      outlinedButtonTheme: outlinedButtonTheme(),
      inputDecorationTheme: lightInputDecorationTheme,
      checkboxTheme: checkboxTheme,
      appBarTheme: appBarLightTheme,
      colorScheme: appColorScheme,
      scrollbarTheme: scrollbarTheme,
      dataTableTheme: dataTableLightTheme,
    );
  }
}
