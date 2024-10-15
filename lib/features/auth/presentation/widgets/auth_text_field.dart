import 'package:flutter/material.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField(
      {super.key,
      required this.controller,
      this.validator,
      this.hintText,
      this.maxLines,
      this.prefixIcon,
      this.suffixIcon,
      this.obscureText = false});
  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String? hintText;
  final int? maxLines;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      controller: controller,
      validator: validator,
      obscureText: obscureText,
      style: AppTextStyles.medium14.copyWith(fontSize: 13),
      decoration: InputDecoration(
          prefixIcon: prefixIcon, hintText: hintText, suffixIcon: suffixIcon),
      onTapOutside: (_) {
        FocusManager.instance.primaryFocus!.unfocus();
      },
    );
  }
}
