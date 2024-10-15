import 'package:flutter/material.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';

class DeleteDialogTextWidget extends StatelessWidget {
  const DeleteDialogTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Are you sure you want to delete?'.hardCoded,
      style: AppTextStyles.medium14,
    );
  }
}
