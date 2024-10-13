import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:maids_task/core/extensions/build_context_extensions.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/core/functions/bottom_sheet.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';
import 'package:maids_task/features/task/presentation/bloc/update_task/update_task_cubit.dart';
import 'package:maids_task/features/task/presentation/widgets/update_task/update_task_widget.dart';
import 'package:maids_task/injection_container.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key, required this.task});
  final Task task;
  @override
  Widget build(BuildContext context) {
    return Slidable(
      startActionPane: ActionPane(
        motion: const ScrollMotion(),
        children: [
          SlidableAction(
            onPressed: (_) {},
            icon: Icons.remove,
            backgroundColor: Colors.redAccent,
            label: 'Remove'.hardCoded,
          ),
          SlidableAction(
            onPressed: (_) {
              openBottomSheet(
                context,
                Padding(
                  padding: EdgeInsets.only(
                      bottom: MediaQuery.of(context).viewInsets.bottom),
                  child: BlocProvider(
                    create: (context) => getIt<UpdateTaskCubit>(),
                    child: UpdateTaskWidget(task: task),
                  ),
                ),
              );
            },
            label: 'Edit'.hardCoded,
            icon: Icons.edit,
            backgroundColor: Colors.green,
          ),
        ],
      ),
      child: Container(
        height: 100,
        width: context.width,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black.withOpacity(0.2)),
          borderRadius: BorderRadius.circular(4),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 12),
        margin: const EdgeInsets.only(left: 16, right: 16),
        child: Row(
          children: [
            Expanded(
              child: Text(
                task.todo,
                style: AppTextStyles.medium14.copyWith(fontSize: 12),
                softWrap: true,
                textAlign: TextAlign.start,
                maxLines: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
