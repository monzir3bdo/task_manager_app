import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:maids_task/features/task/presentation/bloc/add_task/add_task_cubit.dart';

class NewTaskTextField extends StatelessWidget {
  const NewTaskTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      controller: context.read<AddTaskCubit>().newTaskController,
      maxLines: 3,
      hintText: 'Add a New Task'.hardCoded,
      validator: (value) {
        return value!.isEmpty ? "Tasks Is Required" : null;
      },
    );
  }
}
