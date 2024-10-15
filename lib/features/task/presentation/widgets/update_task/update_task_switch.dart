import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';
import 'package:maids_task/features/task/presentation/bloc/update_task/update_task_cubit.dart';

import '../../../../../core/styles/app_text_styles.dart';

class UpdateTaskSwitch extends StatefulWidget {
  const UpdateTaskSwitch({super.key, required this.task});
  final Task task;
  @override
  State<UpdateTaskSwitch> createState() => _UpdateTaskSwitchState();
}

class _UpdateTaskSwitchState extends State<UpdateTaskSwitch> {
  @override
  void initState() {
    context.read<UpdateTaskCubit>().isFinished = widget.task.completed;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Completed'.hardCoded,
          style: AppTextStyles.medium14,
        ),
        BlocBuilder<UpdateTaskCubit, UpdateTaskState>(
          builder: (context, state) {
            return CupertinoSwitch(
              value: context.read<UpdateTaskCubit>().isFinished,
              onChanged: (value) {
                context.read<UpdateTaskCubit>().toggleNewTaskButton();
              },
            );
          },
        ),
      ],
    );
  }
}
