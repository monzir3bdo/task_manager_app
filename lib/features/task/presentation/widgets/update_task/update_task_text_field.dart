import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/features/auth/presentation/widgets/auth_text_field.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';
import 'package:maids_task/features/task/presentation/bloc/update_task/update_task_cubit.dart';

class UpdateTaskTextField extends StatefulWidget {
  const UpdateTaskTextField({super.key, required this.task});
  final Task task;
  @override
  State<UpdateTaskTextField> createState() => _UpdateTaskTextFieldState();
}

class _UpdateTaskTextFieldState extends State<UpdateTaskTextField> {
  @override
  void initState() {
    context.read<UpdateTaskCubit>().updateTaskController.text =
        widget.task.todo;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return AuthTextField(
      controller: context.read<UpdateTaskCubit>().updateTaskController,
      maxLines: 3,
      hintText: 'Update Task'.hardCoded,
      validator: (value) {
        return value!.isEmpty ? "Tasks Is Required" : null;
      },
    );
  }
}
