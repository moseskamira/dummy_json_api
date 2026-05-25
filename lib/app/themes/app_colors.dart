import 'package:flutter/material.dart';

class AppColors {
  static const int _primaryPrimaryValue = 0xFF2196F3;
  static const Color primaryColor = Color(_primaryPrimaryValue);
  static const MaterialColor primaryMaterialColor =
      MaterialColor(_primaryPrimaryValue, <int, Color>{
        50: Color(0xFFE3F2FD),
        100: Color(0xFFBBDEFB),
        200: Color(0xFF90CAF9),
        300: Color(0xFF64B5F6),
        400: Color(0xFF42A5F5),
        500: Color(_primaryPrimaryValue),
        600: Color(0xFF1E88E5),
        700: Color(0xFF1976D2),
        800: Color(0xFF1565C0),
        900: Color(0xFF0D47A1),
      });

  static const Color blackColor = Colors.black;
  static const Color blackColor80 = Color(0xFF45454B);
  static const Color blackColor60 = Color(0xFF737378);
  static const Color blackColor40 = Color(0xFFA2A2A5);
  static const Color blackColor20 = Color(0xFFD0D0D2);
  static const Color blackColor10 = Color(0xFFE8E8E9);
  static const Color blackColor5 = Color(0xFFF3F3F4);
  static const Color whileColor80 = Color(0xFFCCCCCC);
  static const Color whileColor60 = Color(0xFF999999);
  static const Color whileColor40 = Color(0xFF666666);
  static const Color whileColor20 = Color(0xFF333333);
  static const Color whileColor10 = Color(0xFF191919);
  static const Color whileColor5 = Color(0xFF0D0D0D);
  static const Color greyColor = Color(0xFFB8B5C3);
  static const Color darkGreyColor = Color(0xFF1C1C25);
  static const Color purpleColor = Color(0xFF7B61FF);
  static const Color successColor = Color(0xFF2ED573);
  static const Color greenColor = Color(0xFF4CAF50);
  static const Color warningColor = Color(0xFFFFBE21);
  static const Color errorColor = Color(0xFFEA5B5B);
  static const Color peachyPink = Color(0xFFFCD5CE);
  static const Color focusedColor = Color(0xFF005092);
  static const Color enabledColor = Color(0xFFCCCCCC);
  static const Color labelColor = Color(0xFF4A5669);
  static const Color inputTextColor = Color(0xFF3F4254);
  static const Color outerBorderColor = Color(0xFFCCCCCC);
  static const Color orangeTextColor = Color(0xFFFFA974);
  static const Color appBlueColor = Color(0xFF024E8E);
  static const Color appDarkBlueColor = Color(0xFF143F81);
  static const Color appLightBlueColor = Color(0xFFD0DFE6);
  static const Color appGray1 = Color(0xFF919191);
  static const Color whiteColor = Color(0xFFFFFFFF);
  static const Color lightGreyColor = Color(0xFFF5F5F5);
  static Color borderColor = Colors.grey.shade300;
}
