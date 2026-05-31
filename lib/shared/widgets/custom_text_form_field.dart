import 'package:dummy_json_api/core/utils/common_functions.dart';
import 'package:dummy_json_api/core/utils/constants.dart';
import 'package:flutter/material.dart';

import '../../app/themes/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hint;
  final Widget? prefix;
  final Widget? suffix;
  final bool obscureText;
  final FormFieldValidator<String>? validator;
  final FormFieldSetter<String>? onSaved;
  final TextInputType keyBoardType;
  final TextInputAction textInputAction;
  final AutovalidateMode? validateMode;
  final TextEditingController? controller;
  final ValueChanged<String>? onChanged;
  final TextStyle? style;
  final String? labelText;

  const CustomTextFormField({
    super.key,
    this.hint,
    this.prefix,
    this.suffix,
    this.obscureText = false,
    this.validator,
    this.onSaved,
    this.keyBoardType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.validateMode,
    this.controller,
    this.onChanged,
    this.style,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    final baseStyle = CommonFunctions.baseStyle;
    final String? label = labelText;
    return Column(
      children: [
        if (label != null && label.isNotEmpty) Text(label, style: baseStyle),
        Container(
          decoration: BoxDecoration(
            color: AppColors.whiteColor,
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            border: Border.all(color: AppColors.borderColor),
          ),
          child: TextFormField(
            controller: controller,
            obscureText: obscureText,
            validator: validator,
            onSaved: onSaved,
            onChanged: onChanged,
            style: style,
            keyboardType: keyBoardType,
            textInputAction: textInputAction,
            decoration: InputDecoration(
              hint: Text(
                hint ?? '',
                style: baseStyle.copyWith(color: AppColors.greyColor),
              ),
              prefixIcon: prefix,
              suffixIcon: suffix,
              contentPadding: EdgeInsets.all(defaultPadding),
            ),
          ),
        ),
      ],
    );
  }
}
