import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';
import 'package:maids_task/features/task/presentation/widgets/task_widget.dart';

class TasksListWidget extends StatelessWidget {
  const TasksListWidget({super.key, required this.tasks});
  final List<Task> tasks;
  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        return TaskWidget(
          task: tasks[index],
        );
      },
      separatorBuilder: (context, index) {
        return const Gap(20);
      },
    );
  }
}
