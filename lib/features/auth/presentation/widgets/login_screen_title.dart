import 'package:flutter/material.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';

class LoginScreenTitle extends StatelessWidget {
  const LoginScreenTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Login Screen'.hardCoded,
      style: AppTextStyles.semiBold16,
    );
  }
}
