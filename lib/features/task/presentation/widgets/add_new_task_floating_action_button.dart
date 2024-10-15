import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:maids_task/core/functions/bottom_sheet.dart';
import 'package:maids_task/features/task/presentation/bloc/add_task/add_task_cubit.dart';
import 'package:maids_task/features/task/presentation/widgets/new_task/new_task_widget.dart';
import 'package:maids_task/injection_container.dart';

class AddNewTaskFloatingActionButton extends StatelessWidget {
  const AddNewTaskFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        openBottomSheet(
          context,
          BlocProvider(
            create: (context) => getIt<AddTaskCubit>(),
            child: const NewTaskWidget(),
          ),
        );
      },
      shape: const CircleBorder(),
      backgroundColor: Colors.indigo,
      child: const Icon(
        Icons.add,
        color: Colors.white,
      ),
    );
  }
}
