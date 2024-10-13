import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';

part 'get_tasks_bloc.freezed.dart';
part 'get_tasks_event.dart';
part 'get_tasks_state.dart';

class GetTasksBloc extends Bloc<GetTasksEvent, GetTasksState> {
  GetTasksBloc(this.taskRepo) : super(const GetTasksState.initial()) {
    on<_GetTasksEvent>(_getTasks);
    on<_RefreshTasksEvent>(_refreshTasks);
  }
  final TaskRepo taskRepo;
  _getTasks(_GetTasksEvent event, Emitter<GetTasksState> state) async {
    emit(const GetTasksState.loading());
    final result = await taskRepo.getTasks(skip: 0, limit: 100);
    result.when(
      success: (tasks) {
        emit(GetTasksState.success(tasks: tasks.todos));
      },
      failure: (message) {
        emit(GetTasksState.failure(message: message));
      },
    );
  }

  _refreshTasks(_RefreshTasksEvent event, Emitter<GetTasksState> state) {}
}
