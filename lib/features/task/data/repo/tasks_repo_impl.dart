import 'package:maids_task/core/network/result/result.dart';
import 'package:maids_task/features/task/data/data_source/local/tasks_local_data_source.dart';
import 'package:maids_task/features/task/data/data_source/remote/tasks_remote_data_source.dart';
import 'package:maids_task/features/task/domain/dtos/add_task_dto.dart';
import 'package:maids_task/features/task/domain/dtos/update_task_dto.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';

class TaskRepoImpl implements TaskRepo {
  final TasksRemoteDataSource remoteDataSource;
  final TasksLocalDataSource tasksLocalDataSource;

  TaskRepoImpl(
      {required this.remoteDataSource, required this.tasksLocalDataSource});
  @override
  Future<Result<void>> addTask(AddTaskDto taskDto) {
    // TODO: implement addTask
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> deleteTask(String taskId) {
    // TODO: implement deleteTask
    throw UnimplementedError();
  }

  @override
  Future<Result<List<Task>>> getTasks() {
    // TODO: implement getTasks
    throw UnimplementedError();
  }

  @override
  Future<Result<void>> updateTask(UpdateTaskDto taskDto) {
    // TODO: implement updateTask
    throw UnimplementedError();
  }
}
