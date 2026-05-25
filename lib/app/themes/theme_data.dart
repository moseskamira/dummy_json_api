import 'package:flutter/material.dart';

import 'app_colors.dart';

const AppBarTheme appBarLightTheme = AppBarTheme(
  backgroundColor: AppColors.whiteColor,
  elevation: 0,
  surfaceTintColor: Colors.transparent,
  scrolledUnderElevation: 0,
  iconTheme: IconThemeData(color: AppColors.labelColor),
  titleTextStyle: TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w400,
    color: AppColors.blackColor,
  ),
);

const ColorScheme appColorScheme = ColorScheme.light(
  primary: AppColors.primaryColor,
  surface: AppColors.whiteColor,
  onSurface: AppColors.blackColor,
  surfaceTint: Colors.transparent,
);

ScrollbarThemeData scrollbarTheme = ScrollbarThemeData(
  trackColor: WidgetStateProperty.all(AppColors.primaryColor),
);

DataTableThemeData dataTableLightTheme = DataTableThemeData(
  columnSpacing: 24,
  headingRowColor: WidgetStateProperty.all(Colors.black12),
  decoration: BoxDecoration(
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    border: Border.all(color: Colors.black12),
  ),
  dataTextStyle: const TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w500,
    color: AppColors.blackColor,
  ),
);

const InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
  hintStyle: TextStyle(
    color: AppColors.greyColor,
    fontWeight: FontWeight.w400,
    fontSize: 14,
  ),
  border: inputBorder,
  enabledBorder: inputBorder,
  focusedBorder: focusedInputBorder,
  errorBorder: errorInputBorder,
  contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 8.0),
);

const OutlineInputBorder inputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(8)),
  borderSide: BorderSide(color: AppColors.lightGreyColor),
);

const OutlineInputBorder focusedInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(8)),
  borderSide: BorderSide(color: AppColors.primaryColor),
);

const OutlineInputBorder errorInputBorder = OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(8)),
  borderSide: BorderSide(color: Colors.red, width: 1.0),
);

OutlineInputBorder secondaryOutlineInputBorder(BuildContext context) {
  return OutlineInputBorder(
    borderRadius: const BorderRadius.all(Radius.circular(8)),
    borderSide: BorderSide(
      color: Theme.of(
        context,
      ).textTheme.bodyLarge!.color!.withValues(alpha: 0.15),
    ),
  );
}

CheckboxThemeData checkboxTheme = CheckboxThemeData(
  checkColor: WidgetStateProperty.all(AppColors.whiteColor),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)),
  ),
  side: const BorderSide(color: AppColors.greyColor),
);

ElevatedButtonThemeData elevatedButtonTheme = ElevatedButtonThemeData(
  style: ElevatedButton.styleFrom(
    padding: const EdgeInsets.all(16),
    backgroundColor: AppColors.primaryColor,
    foregroundColor: AppColors.whiteColor,
    minimumSize: const Size(0, 40),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
  ),
);

OutlinedButtonThemeData outlinedButtonTheme({
  Color borderColor = AppColors.blackColor10,
}) {
  return OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      padding: const EdgeInsets.all(16),
      minimumSize: const Size(0, 48),
      side: BorderSide(width: 1.0, color: borderColor),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
    ),
  );
}

final textButtonThemeData = TextButtonThemeData(
  style: TextButton.styleFrom(foregroundColor: AppColors.primaryColor),
);
