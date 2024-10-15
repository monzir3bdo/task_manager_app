import 'package:flutter/material.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';

class DeleteDialogTitle extends StatelessWidget {
  const DeleteDialogTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Delete Task'.hardCoded,
      style: AppTextStyles.semiBold16.copyWith(fontSize: 14),
    );
  }
}
