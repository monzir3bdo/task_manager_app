import 'package:flutter/material.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';

class TasksTitle extends StatelessWidget {
  const TasksTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Text(
          'Tasks',
          style: AppTextStyles.bold16,
        ),
      ),
    );
  }
}
