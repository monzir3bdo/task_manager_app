import 'package:maids_task/features/task/data/model/tasks_response.dart';
import 'package:maids_task/features/task/domain/dtos/add_task_dto.dart';
import 'package:maids_task/features/task/domain/dtos/update_task_dto.dart';

import '../../../../core/network/result/result.dart';

abstract class TaskRepo {
  Future<Result<TasksResponse>> getTasks(
      {required int skip, required int limit});
  Future<Result<void>> addTask({required AddTaskDto taskDto});
  Future<Result<void>> updateTask({required UpdateTaskDto taskDto});
  Future<Result<void>> deleteTask({required String taskId});
}
