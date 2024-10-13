import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/extensions/build_context_extensions.dart';
import 'package:maids_task/core/extensions/strings_extension.dart';
import 'package:maids_task/core/styles/app_text_styles.dart';
import 'package:maids_task/features/task/presentation/bloc/add_task/add_task_cubit.dart';

class NewTaskButton extends StatelessWidget {
  const NewTaskButton({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddTaskCubit, AddTaskState>(
      builder: (context, state) {
        return state.maybeWhen(orElse: () {
          return SizedBox(
            height: 50,
            width: context.width,
            child: ElevatedButton(
              onPressed: () {
                context.read<AddTaskCubit>().addNewTask();
              },
              child: Text(
                'Add'.hardCoded,
                style: AppTextStyles.medium14.copyWith(color: Colors.white),
              ),
            ),
          );
        }, loading: () {
          return SizedBox(
            height: 50,
            width: context.width,
            child: ElevatedButton(
              onPressed: () {
                context.read<AddTaskCubit>().addNewTask();
              },
              child: const Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        });
      },
    );
  }
}
