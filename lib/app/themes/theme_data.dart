import 'package:flutter/material.dart';

const AppBarTheme appBarLightTheme = AppBarTheme(
  backgroundColor: Colors.white,
  elevation: 0,
  surfaceTintColor: Colors.transparent,
  scrolledUnderElevation: 0,
  iconTheme: IconThemeData(color: Colors.black),
  titleTextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: Colors.black,
  ),
);

const ColorScheme colorScheme = ColorScheme.light(
  primary: Colors.white,
  surface: Colors.white,
  onSurface: Colors.black,
  surfaceTint: Colors.transparent,
);
ScrollbarThemeData scrollbarThemeData = ScrollbarThemeData(
  trackColor: WidgetStateProperty.all(Colors.white),
);

const InputDecorationTheme lightInputDecoration = InputDecorationTheme(
  hintStyle: TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  ),
  border: inputBorder,
  enabledBorder: inputBorder,
  focusedBorder: focusedBorder,
  errorBorder: errorBorder,
  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
);

const OutlineInputBorder inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide(color: Colors.grey),
);

const OutlineInputBorder focusedBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide(color: Colors.white),
);

const OutlineInputBorder errorBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(12)),
  borderSide: BorderSide(color: Colors.redAccent, width: 1.0),
);
