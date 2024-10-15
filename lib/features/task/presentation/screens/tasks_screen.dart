import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:maids_task/features/task/presentation/bloc/get_tasks/get_tasks_bloc.dart';
import 'package:maids_task/features/task/presentation/widgets/add_new_task_floating_action_button.dart';
import 'package:maids_task/features/task/presentation/widgets/loading_list_widget.dart';
import 'package:maids_task/features/task/presentation/widgets/tasks_list_widget.dart';
import 'package:maids_task/features/task/presentation/widgets/tasks_title.dart';

class TasksScreen extends StatefulWidget {
  const TasksScreen({super.key});

  @override
  State<TasksScreen> createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {
  @override
  void initState() {
    context.read<GetTasksBloc>().tasksController.addListener(
      () {
        if (context.read<GetTasksBloc>().tasksController.position.pixels ==
            context
                .read<GetTasksBloc>()
                .tasksController
                .position
                .maxScrollExtent) {
          context.read<GetTasksBloc>().add(const GetTasksEvent.loadMore());
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const AddNewTaskFloatingActionButton(),
      body: SafeArea(
        child: CustomScrollView(
          controller: context.read<GetTasksBloc>().tasksController,
          slivers: [
            const TasksTitle(),
            BlocBuilder<GetTasksBloc, GetTasksState>(
              builder: (context, state) {
                return state.maybeWhen(
                  loading: () {
                    return const LoadingListWidget();
                  },
                  failure: (message) {
                    return SliverToBoxAdapter(
                      child: Container(
                        color: Colors.black,
                      ),
                    );
                  },
                  orElse: () {
                    return const TasksListWidget();
                  },
                );
              },
            ),
            const SliverGap(20),
          ],
        ),
      ),
    );
  }
}
