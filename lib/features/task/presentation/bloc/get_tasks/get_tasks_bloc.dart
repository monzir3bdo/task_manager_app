import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';
import 'package:maids_task/features/task/domain/usecases/get_all_tasks_use_case.dart';

part 'get_tasks_bloc.freezed.dart';
part 'get_tasks_event.dart';
part 'get_tasks_state.dart';

class GetTasksBloc extends Bloc<GetTasksEvent, GetTasksState> {
  GetTasksBloc(this.tasksUseCase) : super(const GetTasksState.initial()) {
    on<_GetTasksEvent>(_getTasks);
    on<_LoadMoreEvent>(_loadMore);
  }
  final GetAllTasksUseCase tasksUseCase;
  ScrollController tasksController = ScrollController();
  bool isLastPage = false;
  int skip = 0;
  int limit = 10;
  List<Task> tasks = [];
  _getTasks(_GetTasksEvent event, Emitter<GetTasksState> state) async {
    emit(const GetTasksState.loading());
    final result = await tasksUseCase(skip: skip, limit: limit);
    result.when(
      success: (taskResult) {
        tasks.addAll(taskResult.todos);

        emit(GetTasksState.success(tasks: tasks));
      },
      failure: (message) {
        emit(GetTasksState.failure(message: message));
      },
    );
  }

  _loadMore(_LoadMoreEvent event, Emitter<GetTasksState> state) async {
    if (isLastPage) {
      return;
    }
    skip = skip + 10;
    final result = await tasksUseCase(skip: skip, limit: limit);
    result.when(
      success: (taskResult) {
        tasks.addAll(taskResult.todos);
        isLastPage = taskResult.todos.length < limit;

        emit(GetTasksState.loadMore(skip: skip));
      },
      failure: (message) {
        emit(GetTasksState.failure(message: message));
      },
    );
  }

  @override
  Future<void> close() {
    tasksController.dispose();
    return super.close();
  }
}
