import 'package:maids_task/core/network/network_info.dart';
import 'package:maids_task/core/network/result/result.dart';
import 'package:maids_task/features/task/data/data_source/local/tasks_local_data_source.dart';
import 'package:maids_task/features/task/data/data_source/remote/tasks_remote_data_source.dart';
import 'package:maids_task/features/task/data/model/tasks_response.dart';
import 'package:maids_task/features/task/domain/dtos/add_task_dto.dart';
import 'package:maids_task/features/task/domain/dtos/update_task_dto.dart';
import 'package:maids_task/features/task/domain/repo/task_repo.dart';

class TaskRepoImpl implements TaskRepo {
  final TasksRemoteDataSource tasksRemoteDataSource;
  final TasksLocalDataSource tasksLocalDataSource;
  final NetworkInfo networkInfo;

  TaskRepoImpl(
      this.tasksRemoteDataSource, this.tasksLocalDataSource, this.networkInfo);
  @override
  Future<Result<void>> addTask({required AddTaskDto taskDto}) async {
    try {
      return Result.success(
          await tasksRemoteDataSource.addTask(taskDto: taskDto));
    } catch (e) {
      return Result.failure(e.toString());
    }
  }

  @override
  Future<Result<void>> deleteTask({required int taskId}) async {
    try {
      return Result.success(
          await tasksRemoteDataSource.deleteTask(taskId: taskId));
    } catch (e) {
      return Result.failure(e.toString());
    }
  }

  @override
  Future<Result<TasksResponse>> getTasks(
      {required int skip, required int limit}) async {
    try {
      if (await networkInfo.isConnected) {
        final response =
            await tasksRemoteDataSource.getTasks(skip: skip, limit: limit);
        await tasksLocalDataSource.cacheTasks(response.todos);
        return Result.success(response);
      } else {
        final localTasks = await tasksLocalDataSource.getTasks();
        return Result.success(TasksResponse(
          todos: localTasks,
          total: localTasks.length,
          skip: skip,
          limit: limit,
        ));
      }
    } catch (e) {
      return Result.failure(e.toString());
    }
  }

  @override
  Future<Result<void>> updateTask({required UpdateTaskDto taskDto}) async {
    try {
      return Result.success(
          await tasksRemoteDataSource.updateTask(taskDto: taskDto));
    } catch (e) {
      return Result.failure(e.toString());
    }
  }
}
