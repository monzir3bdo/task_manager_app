import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:maids_task/core/extensions/build_context_extensions.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/core/functions/custom_toast.dart';
import 'package:maids_task/features/task/presentation/bloc/add_task/add_task_cubit.dart';
import 'package:maids_task/features/task/presentation/widgets/new_task/new_task_switch.dart';
import 'package:maids_task/features/task/presentation/widgets/new_task/new_task_text_field.dart';
import 'package:maids_task/features/task/presentation/widgets/new_task/new_task_title.dart';

import 'new_task_button.dart';

class NewTaskWidget extends StatelessWidget {
  const NewTaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.height * 0.3,
      width: context.width,
      color: Colors.white,
      margin: const EdgeInsets.only(top: 10, left: 12, right: 12, bottom: 20),
      child: Form(
        key: context.read<AddTaskCubit>().newTaskKey,
        child: BlocListener<AddTaskCubit, AddTaskState>(
          listener: (context, state) {
            state.whenOrNull(
              success: () {
                context.pop();
                CustomToastWidget.successToast(
                    'Task Updated Successfully'.hardCoded);
              },
              failure: (message) {
                CustomToastWidget.successToast(message);
              },
            );
          },
          child: const Column(
            children: [
              NewTaskTitle(),
              Gap(20),
              NewTaskTextField(),
              Gap(20),
              NewTaskSwitch(),
              Spacer(),
              NewTaskButton(),
            ],
          ),
        ),
      ),
    );
  }
}
