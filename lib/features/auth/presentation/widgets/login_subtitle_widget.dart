import 'package:flutter/material.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';

class LoginSubtitleWidget extends StatelessWidget {
  const LoginSubtitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'You can manage taks efficiently',
      style: AppTextStyles.medium14.copyWith(fontSize: 12),
    );
  }
}
