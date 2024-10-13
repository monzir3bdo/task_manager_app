import 'package:injectable/injectable.dart';
import 'package:maids_task/core/network/clients/tasks_service_client.dart';
import 'package:maids_task/features/task/domain/dtos/update_task_dto.dart';
import 'package:maids_task/features/task/domain/entity/task_entity.dart';

import '../../../domain/dtos/add_task_dto.dart';

@injectable
class TasksRemoteDataSource {
  final TasksServiceClient tasksServiceClient;

  TasksRemoteDataSource({required this.tasksServiceClient});
  Future<List<Task>> getTasks({required int skip, required int limit}) async {
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

  Future<void> deleteTask({required int todoId}) async {
    return await tasksServiceClient.deleteTask(todoId);
  }
}
