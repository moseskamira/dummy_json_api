import 'package:flutter/material.dart';

import '../../app/themes/app_colors.dart';

class AppSnackBar {
  AppSnackBar._();

  static void show({
    required BuildContext context,
    required String message,
    bool isError = false,
    bool showCloseButton = false,
  }) {
    final snackBar = SnackBar(
      content: Text(
        message,
        style: TextStyle(
          color: AppColors.whiteColor,
          fontSize: 16,
          fontWeight: FontWeight.w400,
        ),
      ),
      backgroundColor: isError
          ? AppColors.errorColor
          : AppColors.appLightBlueColor,
      behavior: SnackBarBehavior.floating,
      duration: showCloseButton ? Duration(days: 1) : Duration(seconds: 3),
      action: showCloseButton
          ? SnackBarAction(
              label: 'Close',
              onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
              },
            )
          : null,
    );
    if (context.mounted) {
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
