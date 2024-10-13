import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:maids_task/features/task/presentation/bloc/get_tasks/get_tasks_bloc.dart';
import 'package:maids_task/features/task/presentation/widgets/add_new_task_floating_action_button.dart';
import 'package:maids_task/features/task/presentation/widgets/tasks_list_widget.dart';
import 'package:maids_task/features/task/presentation/widgets/tasks_title.dart';

import '../../../../injection_container.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const AddNewTaskFloatingActionButton(),
      body: SafeArea(
        child: BlocProvider(
          lazy: false,
          create: (context) =>
              getIt<GetTasksBloc>()..add(const GetTasksEvent.getTasks()),
          child: CustomScrollView(
            slivers: [
              const TasksTitle(),
              BlocBuilder<GetTasksBloc, GetTasksState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    success: (tasks) {
                      return TasksListWidget(tasks: tasks);
                    },
                    failure: (message) {
                      return SliverToBoxAdapter(
                        child: Container(
                          color: Colors.black,
                        ),
                      );
                    },
                    orElse: () {
                      return const SliverToBoxAdapter(
                          child: CircularProgressIndicator());
                    },
                  );
                },
              ),
              const SliverGap(20),
            ],
          ),
        ),
      ),
    );
  }
}
