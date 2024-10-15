import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:maids_task/core/extensions/build_context_extensions.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/core/functions/custom_toast.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';
import 'package:maids_task/features/task/presentation/bloc/update_task/update_task_cubit.dart';
import 'package:maids_task/features/task/presentation/widgets/update_task/update_task_button.dart';
import 'package:maids_task/features/task/presentation/widgets/update_task/update_task_switch.dart';
import 'package:maids_task/features/task/presentation/widgets/update_task/update_task_text_field.dart';
import 'package:maids_task/features/task/presentation/widgets/update_task/update_task_title.dart';

class UpdateTaskWidget extends StatelessWidget {
  const UpdateTaskWidget({super.key, required this.task});
  final Task task;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.3,
      width: context.width,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10, left: 12, right: 12, bottom: 20),
      child: Form(
        key: context.read<UpdateTaskCubit>().newTaskKey,
        child: BlocListener<UpdateTaskCubit, UpdateTaskState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                context.pop();
                CustomToastWidget.successToast(
                    'Task Updated Successfully'.hardCoded);
              },
              failure: (message) {
                CustomToastWidget.errorToast(message);
              },
            );
          },
          child: Column(
            children: [
              const UpdateTaskTitle(),
              const Gap(20),
              UpdateTaskTextField(task: task),
              const Gap(20),
              UpdateTaskSwitch(task: task),
              const Spacer(),
              UpdateTaskButton(todoId: task.id),
            ],
          ),
        ),
      ),
    );
  }
}
