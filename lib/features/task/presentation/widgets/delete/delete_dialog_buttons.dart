import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/extensions/build_context_extensions.dart';
import 'package:maids_task/features/task/presentation/bloc/delete_task/delete_task_cubit.dart';
import 'package:maids_task/features/task/presentation/widgets/delete/delete_dialog_button.dart';

class DeleteDialogButtons extends StatelessWidget {
  const DeleteDialogButtons({super.key, required this.taskId});
  final int taskId;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        DeleteDialogButton(
          title: 'Cancel',
          backgroundColor: Colors.grey,
          textColor: Colors.black,
          onPressed: () {
            context.pop();
          },
        ),
        DeleteDialogButton(
          title: "Delete",
          onPressed: () {
            context.read<DeleteTaskCubit>().deleteTask(taskId: taskId);
          },
          backgroundColor: Colors.redAccent,
          textColor: Colors.white,
        ),
      ],
    );
  }
}
