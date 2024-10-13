import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';
import 'package:maids_task/features/task/presentation/bloc/add_task/add_task_cubit.dart';

class NewTaskSwitch extends StatelessWidget {
  const NewTaskSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Completed'.hardCoded,
          style: AppTextStyles.medium14,
        ),
        BlocBuilder<AddTaskCubit, AddTaskState>(
          builder: (context, state) {
            return CupertinoSwitch(
              value: context.read<AddTaskCubit>().isFinished,
              onChanged: (value) {
                context.read<AddTaskCubit>().toggleNewTaskButton();
              },
            );
          },
        ),
      ],
    );
  }
}
