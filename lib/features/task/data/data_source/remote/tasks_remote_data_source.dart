import 'package:maids_task/core/network/clients/tasks_service_client.dart';
import 'package:maids_task/features/task/data/model/tasks_response.dart';
import 'package:maids_task/features/task/domain/dtos/update_task_dto.dart';

import '../../../domain/dtos/add_task_dto.dart';

class TasksRemoteDataSource {
  final TasksServiceClient tasksServiceClient;

  TasksRemoteDataSource({required this.tasksServiceClient});
  Future<TasksResponse> getTasks(
      {required int skip, required int limit}) async {
    return await tasksServiceClient.getTasks(skip, limit);
  }

  Future<void> addTask({required AddTaskDto taskDto}) async {
    return await tasksServiceClient.addTask(
        taskDto.todo, taskDto.completed, taskDto.userId);
  }

  Future<void> updateTask({required UpdateTaskDto taskDto}) async {
    return await tasksServiceClient.updateTask(
        taskDto.todoId, taskDto.todo, taskDto.completed, taskDto.userId);
  }

  Future<void> deleteTask({required int taskId}) async {
    return await tasksServiceClient.deleteTask(taskId);
  }
}
