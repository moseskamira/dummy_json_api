import 'dart:ui';

import 'package:flutter/src/painting/text_style.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../app/themes/app_colors.dart';

class CommonFunctions {
  CommonFunctions._();

  static TextStyle get baseStyle => GoogleFonts.poppins(
    color: AppColors.labelColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );

  static MultiValidator validateInput(String hint) {
    return MultiValidator([RequiredValidator(errorText: '$hint is required')]);
  }

  static MultiValidator validateEmail(String hint) {
    return MultiValidator([
      RequiredValidator(errorText: '$hint is required'),
      EmailValidator(errorText: 'Enter a valid email address'),
    ]);
  }
}
