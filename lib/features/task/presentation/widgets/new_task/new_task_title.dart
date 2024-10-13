import 'package:flutter/material.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';

class NewTaskTitle extends StatelessWidget {
  const NewTaskTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        'Add New Task'.hardCoded,
        style: AppTextStyles.semiBold16,
      ),
    );
  }
}
