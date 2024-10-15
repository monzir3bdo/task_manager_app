import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';
import 'package:maids_task/features/task/presentation/bloc/get_tasks/get_tasks_bloc.dart';
import 'package:maids_task/features/task/presentation/widgets/task_widget.dart';

class TasksListWidget extends StatelessWidget {
  const TasksListWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetTasksBloc, GetTasksState>(
      builder: (context, state) {
        return SliverList.separated(
          itemCount: context.read<GetTasksBloc>().tasks.length + 1,
          itemBuilder: (context, index) {
            if (index < context.read<GetTasksBloc>().tasks.length) {
              return TaskWidget(
                task: context.read<GetTasksBloc>().tasks[index],
              );
            } else if (!context.read<GetTasksBloc>().isLastPage) {
              return const Center(
                child: CircularProgressIndicator(
                  color: Colors.indigo,
                ),
              );
            } else {
              return Center(
                child: Text(
                  'Last Page'.hardCoded,
                  style: AppTextStyles.semiBold16,
                ),
              );
            }
          },
          separatorBuilder: (context, index) {
            return const Gap(20);
          },
        );
      },
    );
  }
}
