import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:maids_task/core/extensions/build_context_extensions.dart';
import 'package:maids_task/core/functions/custom_toast.dart';
import 'package:maids_task/features/task/presentation/bloc/delete_task/delete_task_cubit.dart';
import 'package:maids_task/features/task/presentation/widgets/delete/delete_dialog_buttons.dart';
import 'package:maids_task/features/task/presentation/widgets/delete/delete_dialog_text_widget.dart';
import 'package:maids_task/features/task/presentation/widgets/delete/delete_dialog_title.dart';

import '../../../../../injection_container.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({super.key, required this.taskId});

  final int taskId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<DeleteTaskCubit>(),
      child: Dialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
        child: Container(
          width: 150,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(6),
          ),
          padding: const EdgeInsets.only(
            top: 10,
            left: 16,
            right: 16,
          ),
          child: BlocListener<DeleteTaskCubit, DeleteTaskState>(
            listener: (context, state) {
              state.whenOrNull(success: () {
                context.pop();
                CustomToastWidget.successToast('Task Deleted Successfully');
              }, failure: (message) {
                CustomToastWidget.errorToast(message);
              });
            },
            child: Column(
              children: [
                const DeleteDialogTitle(),
                const Gap(20),
                const DeleteDialogTextWidget(),
                const Gap(20),
                DeleteDialogButtons(taskId: taskId),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
